puts <<~TEXT 
       旅行プランを選択してください。

       1.沖縄旅行(10000円)
       2.北海道旅行(20000円)
       3.九州旅行(15000円)

     TEXT

while true
  print "プランの番号を選択 > "
  plan_num = gets.to_i
  break if (1..3).include?(plan_num)
  puts "1から3の番号を入力して下さい。"
end

if plan_num == 1
  # プラン番号が 1 のとき
  place = "沖縄旅行"
  price = 10000
elsif plan_num == 2
  # プラン番号が 2 のとき
  place = "北海道旅行"
  price = 20000
elsif plan_num == 3
  # プラン番号が 3 のとき
  place = "九州旅行"
  price = 15000
end
puts "#{place}ですね。"

puts "何名で予約されますか？"

while true
  print "人数を入力 > "
  quantity_of_product = gets.to_i
  break if quantity_of_product >= 1
  puts "1名以上を入力してください。"
end

puts "#{quantity_of_product}名ですね。"

total_price = price * quantity_of_product

if quantity_of_product >= 5
total_price *= 0.9
puts "5名以上ですので10％引きとなります"
end

puts "合計料金は#{total_price.floor}円になります。"
