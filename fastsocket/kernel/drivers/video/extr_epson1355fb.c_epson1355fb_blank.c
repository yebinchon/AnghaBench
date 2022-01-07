
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {struct epson1355_par* par; } ;
struct epson1355_par {int dummy; } ;


 int EINVAL ;





 int backlight_enable (int) ;
 int lcd_enable (struct epson1355_par*,int) ;

__attribute__((used)) static int epson1355fb_blank(int blank_mode, struct fb_info *info)
{
 struct epson1355_par *par = info->par;

 switch (blank_mode) {
 case 129:
 case 131:
  lcd_enable(par, 1);
  backlight_enable(1);
  break;
 case 128:
 case 132:
  backlight_enable(0);
  break;
 case 130:
  backlight_enable(0);
  lcd_enable(par, 0);
  break;
 default:
  return -EINVAL;
 }


 return (blank_mode == 131) ? 1 : 0;
}
