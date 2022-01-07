
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fb_videomode {int xres; int yres; int hsync_len; int vsync_len; int left_margin; int right_margin; int upper_margin; int lower_margin; int vmode; int refresh; int flag; int sync; int pixclock; int * name; } ;
struct fb_var_screeninfo {int xres; int yres; int hsync_len; int vsync_len; int left_margin; int right_margin; int upper_margin; int lower_margin; int vmode; int pixclock; int sync; } ;


 int FB_MODE_IS_FROM_VAR ;
 int FB_VMODE_DOUBLE ;
 int FB_VMODE_INTERLACED ;
 int FB_VMODE_MASK ;
 int PICOS2KHZ (int ) ;

void fb_var_to_videomode(struct fb_videomode *mode,
    const struct fb_var_screeninfo *var)
{
 u32 pixclock, hfreq, htotal, vtotal;

 mode->name = ((void*)0);
 mode->xres = var->xres;
 mode->yres = var->yres;
 mode->pixclock = var->pixclock;
 mode->hsync_len = var->hsync_len;
 mode->vsync_len = var->vsync_len;
 mode->left_margin = var->left_margin;
 mode->right_margin = var->right_margin;
 mode->upper_margin = var->upper_margin;
 mode->lower_margin = var->lower_margin;
 mode->sync = var->sync;
 mode->vmode = var->vmode & FB_VMODE_MASK;
 mode->flag = FB_MODE_IS_FROM_VAR;
 mode->refresh = 0;

 if (!var->pixclock)
  return;

 pixclock = PICOS2KHZ(var->pixclock) * 1000;

 htotal = var->xres + var->right_margin + var->hsync_len +
  var->left_margin;
 vtotal = var->yres + var->lower_margin + var->vsync_len +
  var->upper_margin;

 if (var->vmode & FB_VMODE_INTERLACED)
  vtotal /= 2;
 if (var->vmode & FB_VMODE_DOUBLE)
  vtotal *= 2;

 hfreq = pixclock/htotal;
 mode->refresh = hfreq/vtotal;
}
