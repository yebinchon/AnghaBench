
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_var_screeninfo {unsigned int yoffset; scalar_t__ yres; scalar_t__ yres_virtual; unsigned int xres; scalar_t__ xoffset; } ;
struct fb_info {int dummy; } ;


 int EINVAL ;
 scalar_t__ TOP_REG ;

__attribute__((used)) static int g364fb_pan_display(struct fb_var_screeninfo *var,
         struct fb_info *info)
{
 if (var->xoffset || var->yoffset + var->yres > var->yres_virtual)
  return -EINVAL;

 *(unsigned int *) TOP_REG = var->yoffset * var->xres;
 return 0;
}
