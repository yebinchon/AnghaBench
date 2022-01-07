
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tosa_lcd_data {int lcd_power; } ;
struct lcd_device {int dummy; } ;


 struct tosa_lcd_data* lcd_get_data (struct lcd_device*) ;

__attribute__((used)) static int tosa_lcd_get_power(struct lcd_device *lcd)
{
 struct tosa_lcd_data *data = lcd_get_data(lcd);

 return data->lcd_power;
}
