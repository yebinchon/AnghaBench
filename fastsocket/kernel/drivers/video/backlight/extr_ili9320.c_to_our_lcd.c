
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcd_device {int dummy; } ;
struct ili9320 {int dummy; } ;


 struct ili9320* lcd_get_data (struct lcd_device*) ;

__attribute__((used)) static inline struct ili9320 *to_our_lcd(struct lcd_device *lcd)
{
 return lcd_get_data(lcd);
}
