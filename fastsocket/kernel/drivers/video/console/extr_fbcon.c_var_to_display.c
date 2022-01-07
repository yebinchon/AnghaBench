
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_var_screeninfo {int rotate; int transp; int blue; int green; int red; int width; int height; int accel_flags; int nonstd; int grayscale; int bits_per_pixel; int yres_virtual; int xres_virtual; } ;
struct fb_info {int modelist; } ;
struct display {int * mode; int rotate; int transp; int blue; int green; int red; int width; int height; int accel_flags; int nonstd; int grayscale; int bits_per_pixel; int yres_virtual; int xres_virtual; } ;


 int EINVAL ;
 int * fb_match_mode (struct fb_var_screeninfo*,int *) ;

__attribute__((used)) static int var_to_display(struct display *disp,
     struct fb_var_screeninfo *var,
     struct fb_info *info)
{
 disp->xres_virtual = var->xres_virtual;
 disp->yres_virtual = var->yres_virtual;
 disp->bits_per_pixel = var->bits_per_pixel;
 disp->grayscale = var->grayscale;
 disp->nonstd = var->nonstd;
 disp->accel_flags = var->accel_flags;
 disp->height = var->height;
 disp->width = var->width;
 disp->red = var->red;
 disp->green = var->green;
 disp->blue = var->blue;
 disp->transp = var->transp;
 disp->rotate = var->rotate;
 disp->mode = fb_match_mode(var, &info->modelist);
 if (disp->mode == ((void*)0))

  return -EINVAL;
 return 0;
}
