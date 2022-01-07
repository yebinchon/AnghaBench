
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mode_map {int vmode; struct fb_videomode* mode; } ;
struct fb_videomode {int vmode; int sync; int vsync_len; int hsync_len; int lower_margin; int upper_margin; int right_margin; int left_margin; int pixclock; int yres; int xres; } ;
struct TYPE_8__ {int offset; int length; } ;
struct TYPE_7__ {int length; int offset; } ;
struct TYPE_6__ {int offset; int length; } ;
struct TYPE_5__ {int offset; int length; } ;
struct fb_var_screeninfo {int bits_per_pixel; int height; int width; int vmode; int sync; int vsync_len; int hsync_len; int lower_margin; int upper_margin; int right_margin; int left_margin; int pixclock; int yres_virtual; int xres_virtual; int yres; int xres; TYPE_4__ transp; TYPE_3__ blue; TYPE_2__ green; TYPE_1__ red; } ;





 int EINVAL ;
 struct mode_map* mac_modes ;
 int memset (struct fb_var_screeninfo*,int ,int) ;

int mac_vmode_to_var(int vmode, int cmode, struct fb_var_screeninfo *var)
{
    const struct fb_videomode *mode = ((void*)0);
    const struct mode_map *map;

    for (map = mac_modes; map->vmode != -1; map++)
 if (map->vmode == vmode) {
     mode = map->mode;
     break;
 }
    if (!mode)
 return -EINVAL;

    memset(var, 0, sizeof(struct fb_var_screeninfo));
    switch (cmode) {
 case 128:
     var->bits_per_pixel = 8;
     var->red.offset = 0;
     var->red.length = 8;
     var->green.offset = 0;
     var->green.length = 8;
     var->blue.offset = 0;
     var->blue.length = 8;
     break;

 case 130:
     var->bits_per_pixel = 16;
     var->red.offset = 10;
     var->red.length = 5;
     var->green.offset = 5;
     var->green.length = 5;
     var->blue.offset = 0;
     var->blue.length = 5;
     break;

 case 129:
     var->bits_per_pixel = 32;
     var->red.offset = 16;
     var->red.length = 8;
     var->green.offset = 8;
     var->green.length = 8;
     var->blue.offset = 0;
     var->blue.length = 8;
     var->transp.offset = 24;
     var->transp.length = 8;
     break;

 default:
     return -EINVAL;
    }
    var->xres = mode->xres;
    var->yres = mode->yres;
    var->xres_virtual = mode->xres;
    var->yres_virtual = mode->yres;
    var->height = -1;
    var->width = -1;
    var->pixclock = mode->pixclock;
    var->left_margin = mode->left_margin;
    var->right_margin = mode->right_margin;
    var->upper_margin = mode->upper_margin;
    var->lower_margin = mode->lower_margin;
    var->hsync_len = mode->hsync_len;
    var->vsync_len = mode->vsync_len;
    var->sync = mode->sync;
    var->vmode = mode->vmode;
    return 0;
}
