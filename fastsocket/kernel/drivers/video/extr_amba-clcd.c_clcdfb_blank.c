
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int dummy; } ;
struct clcd_fb {int clcd_cntl; } ;


 int clcdfb_disable (struct clcd_fb*) ;
 int clcdfb_enable (struct clcd_fb*,int ) ;
 struct clcd_fb* to_clcd (struct fb_info*) ;

__attribute__((used)) static int clcdfb_blank(int blank_mode, struct fb_info *info)
{
 struct clcd_fb *fb = to_clcd(info);

 if (blank_mode != 0) {
  clcdfb_disable(fb);
 } else {
  clcdfb_enable(fb, fb->clcd_cntl);
 }
 return 0;
}
