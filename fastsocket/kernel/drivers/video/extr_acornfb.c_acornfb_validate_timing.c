
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_var_screeninfo {int pixclock; unsigned long xres; unsigned long left_margin; unsigned long right_margin; unsigned long hsync_len; unsigned long yres; unsigned long upper_margin; unsigned long lower_margin; unsigned long vsync_len; } ;
struct fb_monspecs {unsigned long vfmin; unsigned long vfmax; unsigned long hfmin; unsigned long hfmax; } ;


 int EINVAL ;

__attribute__((used)) static int
acornfb_validate_timing(struct fb_var_screeninfo *var,
   struct fb_monspecs *monspecs)
{
 unsigned long hs, vs;
 hs = 1953125000 / var->pixclock;
 hs = hs * 512 /
      (var->xres + var->left_margin + var->right_margin + var->hsync_len);
 vs = hs /
      (var->yres + var->upper_margin + var->lower_margin + var->vsync_len);

 return (vs >= monspecs->vfmin && vs <= monspecs->vfmax &&
  hs >= monspecs->hfmin && hs <= monspecs->hfmax) ? 0 : -EINVAL;
}
