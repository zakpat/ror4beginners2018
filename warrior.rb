class Character
  attr_accessor :name
  attr_accessor :level

  def initialize(name:, level:)
    self.name = name
    self.level = level
  end

  def strength
    level+[*1..12].sample
  end 

  def card
    puts "#{name} (#{level} lv)"
  end
end


class Warrior < Character
  def strength
    level+[*1..12].sample
  end
end

class Monster < Character
end

class BattleArena < Character
  attr_accessor :first_character
  attr_accessor :second_character

  def initialize(first_character, second_character)
    self.first_character = first_character
    self.second_character = second_character
  end

  def battle 
    power1=first_character.strength
    power2=second_character.strength
    
    puts "#{first_character.card} attacked #{second_character.card} with #{power1} damage"

    puts "#{second_character.card} attacked #{first_character.card} with #{power2} damage"
    if result = power1>power2
      lv_dif=second_character.level-first_character.level
      if lv_dif>0
          first_character.level=level+lv_dif
      else 
          first_character.level=level+1
      end
      puts "#{first_character.name} won!"
    elsif
      result = power1<power2
      lv_dif=first_character.level-second_character.level
      if lv_dif>0
        second.character.level=level+lv_diff
      else
        second_character.level=level+1
      end
      puts "#{second_character.name} won!"
    end
  end
end



warrior1 = Warrior.new(name: 'Po', level:  1)
warrior2 = Warrior.new(name: 'Tai Lung', level: 1)
monster1 = Monster.new(name: 'Skeleton Mage', level: 15)



arena = BattleArena.new(warrior1, warrior2)
arena.battle
warrior1.level


