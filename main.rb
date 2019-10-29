require_relative 'post'
require_relative 'link'
require_relative 'task'
require_relative 'memo'



puts "Привет, я твой блокнот!"
puts "Что хотите записат в блокнот?"

choices = Post.post_types

choice = -1

until choice >= 0 && choice < choices.size
  choices.each_with_index do |type, index|
    puts "\t#{index}. #{type}"
  end
  choice = gets.to_i
end

entry = Post.create(choice)

entry.read_from_console

entry.save

puts "Запись сохранена."