
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int dummy; } ;



 int LCD_OFF ;
 int LCD_ON ;
 int lcd_busy_wait (struct fb_info*) ;
 int lcd_write_control (struct fb_info*,int ) ;

__attribute__((used)) static int cobalt_lcdfb_blank(int blank_mode, struct fb_info *info)
{
 int retval;

 retval = lcd_busy_wait(info);
 if (retval < 0)
  return retval;

 switch (blank_mode) {
 case 128:
  lcd_write_control(info, LCD_ON);
  break;
 default:
  lcd_write_control(info, LCD_OFF);
  break;
 }

 return 0;
}
