# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

require 'faker'

puts "Destroying all the flats"
Flat.destroy_all
puts "Adding 6 flats"
6.times do
  flat = Flat.new(
    name: Faker::University.name,
    address: Faker::Address.full_address,
    description: Faker::Restaurant.description ,
    price_per_night:  rand(60..2000),
    number_of_guests: rand(1..10)
  )
  flat.save!
end
