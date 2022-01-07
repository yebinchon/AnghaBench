
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcd_device {int dev; } ;
struct corgi_lcd {int power; } ;


 scalar_t__ POWER_IS_ON (int) ;
 int corgi_lcd_power_off (struct corgi_lcd*) ;
 int corgi_lcd_power_on (struct corgi_lcd*) ;
 struct corgi_lcd* dev_get_drvdata (int *) ;

__attribute__((used)) static int corgi_lcd_set_power(struct lcd_device *ld, int power)
{
 struct corgi_lcd *lcd = dev_get_drvdata(&ld->dev);

 if (POWER_IS_ON(power) && !POWER_IS_ON(lcd->power))
  corgi_lcd_power_on(lcd);

 if (!POWER_IS_ON(power) && POWER_IS_ON(lcd->power))
  corgi_lcd_power_off(lcd);

 lcd->power = power;
 return 0;
}
