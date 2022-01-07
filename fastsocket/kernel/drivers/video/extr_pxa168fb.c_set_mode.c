
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pxa168fb_info {struct fb_info* info; } ;
struct fb_videomode {int sync; int vsync_len; int hsync_len; int lower_margin; int upper_margin; int right_margin; int left_margin; int pixclock; int yres; int xres; } ;
struct fb_var_screeninfo {int xres_virtual; int yres_virtual; int bits_per_pixel; int rotate; int vmode; int sync; int vsync_len; int hsync_len; int lower_margin; int upper_margin; int right_margin; int left_margin; int pixclock; int accel_flags; scalar_t__ grayscale; int yres; int xres; } ;
struct TYPE_2__ {int smem_len; } ;
struct fb_info {TYPE_1__ fix; } ;


 int FB_ACCEL_NONE ;
 int FB_ROTATE_UR ;
 int FB_VMODE_NONINTERLACED ;
 void* max (int ,int) ;
 int set_pix_fmt (struct fb_var_screeninfo*,int) ;

__attribute__((used)) static void set_mode(struct pxa168fb_info *fbi, struct fb_var_screeninfo *var,
       struct fb_videomode *mode, int pix_fmt, int ystretch)
{
 struct fb_info *info = fbi->info;

 set_pix_fmt(var, pix_fmt);

 var->xres = mode->xres;
 var->yres = mode->yres;
 var->xres_virtual = max(var->xres, var->xres_virtual);
 if (ystretch)
  var->yres_virtual = info->fix.smem_len /
   (var->xres_virtual * (var->bits_per_pixel >> 3));
 else
  var->yres_virtual = max(var->yres, var->yres_virtual);
 var->grayscale = 0;
 var->accel_flags = FB_ACCEL_NONE;
 var->pixclock = mode->pixclock;
 var->left_margin = mode->left_margin;
 var->right_margin = mode->right_margin;
 var->upper_margin = mode->upper_margin;
 var->lower_margin = mode->lower_margin;
 var->hsync_len = mode->hsync_len;
 var->vsync_len = mode->vsync_len;
 var->sync = mode->sync;
 var->vmode = FB_VMODE_NONINTERLACED;
 var->rotate = FB_ROTATE_UR;
}
