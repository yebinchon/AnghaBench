
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s1d13xxxfb_par {int display; } ;
struct fb_info {struct s1d13xxxfb_par* par; } ;


 int EINVAL ;





 int crt_enable (struct s1d13xxxfb_par*,int) ;
 int dbg (char*,int,struct fb_info*) ;
 int lcd_enable (struct s1d13xxxfb_par*,int) ;

__attribute__((used)) static int
s1d13xxxfb_blank(int blank_mode, struct fb_info *info)
{
 struct s1d13xxxfb_par *par = info->par;

 dbg("s1d13xxxfb_blank: blank=%d, info=%p\n", blank_mode, info);

 switch (blank_mode) {
  case 129:
  case 131:
   if ((par->display & 0x01) != 0)
    lcd_enable(par, 1);
   if ((par->display & 0x02) != 0)
    crt_enable(par, 1);
   break;
  case 128:
  case 132:
   break;
  case 130:
   lcd_enable(par, 0);
   crt_enable(par, 0);
   break;
  default:
   return -EINVAL;
 }


 return ((blank_mode == 131) ? 1 : 0);
}
