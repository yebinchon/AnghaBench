
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tosa_lcd_data {int lcd_power; } ;
struct lcd_device {int dummy; } ;


 scalar_t__ POWER_IS_ON (int) ;
 struct tosa_lcd_data* lcd_get_data (struct lcd_device*) ;
 int tosa_lcd_tg_off (struct tosa_lcd_data*) ;
 int tosa_lcd_tg_on (struct tosa_lcd_data*) ;

int tosa_lcd_set_power(struct lcd_device *lcd, int power)
{
 struct tosa_lcd_data *data = lcd_get_data(lcd);

 if (POWER_IS_ON(power) && !POWER_IS_ON(data->lcd_power))
  tosa_lcd_tg_on(data);

 if (!POWER_IS_ON(power) && POWER_IS_ON(data->lcd_power))
  tosa_lcd_tg_off(data);

 data->lcd_power = power;
 return 0;
}
