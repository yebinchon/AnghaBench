
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int dummy; } ;


 int LCD_CLEAR ;
 int LCD_PRERESET ;
 int LCD_RESET ;
 int lcd_write_control (struct fb_info*,int ) ;
 int udelay (int) ;

__attribute__((used)) static void lcd_clear(struct fb_info *info)
{
 int i;

 for (i = 0; i < 4; i++) {
  udelay(150);

  lcd_write_control(info, LCD_PRERESET);
 }

 udelay(150);

 lcd_write_control(info, LCD_CLEAR);

 udelay(150);

 lcd_write_control(info, LCD_RESET);
}
