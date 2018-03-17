require 'pry'

class Owner
  
<<<<<<< HEAD
  attr_accessor :name, :pets  
=======
  attr_accessor :name  
>>>>>>> bb5ce95899f4e1e5e3bbf817823b64d703b249cb
  attr_reader :species
  
  @@all = []
  @@owner_counter = 0
  
  def self.all
    @@all
  end
  
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @@owner_counter +=1
<<<<<<< HEAD
    @pets = {:fishes => [], :dogs => [], :cats => []}
=======
>>>>>>> bb5ce95899f4e1e5e3bbf817823b64d703b249cb
  end

  def self.count
    @@owner_counter
  end
  
  def self.reset_all
    @@all.clear
    @@owner_counter = 0
  end
  
  def say_species
    return "I am a #{@species}."
  end
  
<<<<<<< HEAD
  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end
  
  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end
  
  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end
  
  def walk_dogs
    @pets[:dogs][0].mood = "happy"
  end
  
  def play_with_cats
    @pets[:cats][0].mood = "happy"
  end
  
  def feed_fish
    @pets[:fishes][0].mood = "happy"
  end
  
  def sell_pets
    @pets[:dogs][0].mood = "nervous"
    @pets[:dogs][1].mood = "nervous"
    @pets[:cats][0].mood = "nervous"
    @pets[:cats][1].mood = "nervous"
    @pets[:fishes][0].mood = "nervous"
    self.class.reset_all
    @pets.clear
  end
  
  def list_pets
    return "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end
  
=======
>>>>>>> bb5ce95899f4e1e5e3bbf817823b64d703b249cb
end