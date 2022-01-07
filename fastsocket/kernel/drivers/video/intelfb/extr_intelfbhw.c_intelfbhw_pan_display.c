
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int pan_offset; int pan_display; } ;
struct TYPE_3__ {int offset; } ;
struct intelfb_info {int pitch; TYPE_2__ vsync; TYPE_1__ fb; } ;
struct fb_var_screeninfo {int yoffset; scalar_t__ xres; scalar_t__ xres_virtual; scalar_t__ yres; scalar_t__ yres_virtual; int bits_per_pixel; int activate; int xoffset; } ;
struct fb_info {int dummy; } ;


 int DBG_MSG (char*) ;
 int DSPABASE ;
 int EINVAL ;
 int FB_ACTIVATE_VBL ;
 struct intelfb_info* GET_DINFO (struct fb_info*) ;
 int OUTREG (int ,int) ;
 int ROUND_DOWN_TO (int ,int) ;
 int intelfbhw_enable_irq (struct intelfb_info*) ;

int intelfbhw_pan_display(struct fb_var_screeninfo *var, struct fb_info *info)
{
 struct intelfb_info *dinfo = GET_DINFO(info);
 u32 offset, xoffset, yoffset;





 xoffset = ROUND_DOWN_TO(var->xoffset, 8);
 yoffset = var->yoffset;

 if ((xoffset + var->xres > var->xres_virtual) ||
     (yoffset + var->yres > var->yres_virtual))
  return -EINVAL;

 offset = (yoffset * dinfo->pitch) +
   (xoffset * var->bits_per_pixel) / 8;

 offset += dinfo->fb.offset << 12;

 dinfo->vsync.pan_offset = offset;
 if ((var->activate & FB_ACTIVATE_VBL) &&
     !intelfbhw_enable_irq(dinfo))
  dinfo->vsync.pan_display = 1;
 else {
  dinfo->vsync.pan_display = 0;
  OUTREG(DSPABASE, offset);
 }

 return 0;
}
