
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pvr2fb_par {int is_interlaced; int is_doublescan; int hsync_total; int vsync_total; int borderstart_h; int borderstart_v; int diwstart_h; int diwstart_v; int borderstop_h; int borderstop_v; int is_lowres; scalar_t__ disp_start; } ;
struct fb_var_screeninfo {int vmode; int left_margin; int xres; int right_margin; int hsync_len; int upper_margin; int yres; int lower_margin; int vsync_len; int sync; unsigned long yoffset; int bits_per_pixel; int xres_virtual; } ;
struct TYPE_2__ {unsigned long line_length; scalar_t__ smem_start; } ;
struct fb_info {TYPE_1__ fix; struct fb_var_screeninfo var; scalar_t__ par; } ;


 scalar_t__ CT_VGA ;
 int FB_SYNC_BROADCAST ;
 int FB_VMODE_DOUBLE ;
 int FB_VMODE_INTERLACED ;
 int FB_VMODE_MASK ;
 int NTSC_VTOTAL ;
 int PAL_VTOTAL ;
 scalar_t__ VO_VGA ;
 scalar_t__ cable_type ;
 unsigned long get_line_length (int ,int ) ;
 scalar_t__ pvr2_init_cable () ;
 scalar_t__ video_output ;

__attribute__((used)) static int pvr2fb_set_par(struct fb_info *info)
{
 struct pvr2fb_par *par = (struct pvr2fb_par *)info->par;
 struct fb_var_screeninfo *var = &info->var;
 unsigned long line_length;
 unsigned int vtotal;
 cable_type = pvr2_init_cable();
 if (cable_type == CT_VGA && video_output != VO_VGA)
  video_output = VO_VGA;

 var->vmode &= FB_VMODE_MASK;
 if (var->vmode & FB_VMODE_INTERLACED && video_output != VO_VGA)
  par->is_interlaced = 1;




 if (var->vmode & FB_VMODE_DOUBLE && video_output == VO_VGA)
  par->is_doublescan = 1;

 par->hsync_total = var->left_margin + var->xres + var->right_margin +
                    var->hsync_len;
 par->vsync_total = var->upper_margin + var->yres + var->lower_margin +
                    var->vsync_len;

 if (var->sync & FB_SYNC_BROADCAST) {
  vtotal = par->vsync_total;
  if (par->is_interlaced)
   vtotal /= 2;
  if (vtotal > (PAL_VTOTAL + NTSC_VTOTAL)/2) {


   par->borderstart_h = 116;
   par->borderstart_v = 44;
  } else {

   par->borderstart_h = 126;
   par->borderstart_v = 18;
  }
 } else {






  par->borderstart_h = 126;
  par->borderstart_v = 40;
 }


 par->diwstart_h = par->borderstart_h + var->left_margin;
 par->diwstart_v = par->borderstart_v + var->upper_margin;
 par->borderstop_h = par->diwstart_h + var->xres +
       var->right_margin;
 par->borderstop_v = par->diwstart_v + var->yres +
       var->lower_margin;

 if (!par->is_interlaced)
  par->borderstop_v /= 2;
 if (info->var.xres < 640)
  par->is_lowres = 1;

 line_length = get_line_length(var->xres_virtual, var->bits_per_pixel);
 par->disp_start = info->fix.smem_start + (line_length * var->yoffset) * line_length;
 info->fix.line_length = line_length;
 return 0;
}
