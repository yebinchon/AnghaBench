
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_lcd {int power; } ;
struct lcd_device {int dummy; } ;


 struct platform_lcd* to_our_lcd (struct lcd_device*) ;

__attribute__((used)) static int platform_lcd_get_power(struct lcd_device *lcd)
{
 struct platform_lcd *plcd = to_our_lcd(lcd);

 return plcd->power;
}
