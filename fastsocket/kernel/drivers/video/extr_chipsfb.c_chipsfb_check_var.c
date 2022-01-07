
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_var_screeninfo {int xres; int yres; int xres_virtual; int yres_virtual; int bits_per_pixel; int vmode; scalar_t__ nonstd; } ;
struct fb_info {int dummy; } ;


 int EINVAL ;
 int FB_VMODE_MASK ;
 int FB_VMODE_NONINTERLACED ;

__attribute__((used)) static int chipsfb_check_var(struct fb_var_screeninfo *var,
        struct fb_info *info)
{
 if (var->xres > 800 || var->yres > 600
     || var->xres_virtual > 800 || var->yres_virtual > 600
     || (var->bits_per_pixel != 8 && var->bits_per_pixel != 16)
     || var->nonstd
     || (var->vmode & FB_VMODE_MASK) != FB_VMODE_NONINTERLACED)
  return -EINVAL;

 var->xres = var->xres_virtual = 800;
 var->yres = var->yres_virtual = 600;

 return 0;
}
