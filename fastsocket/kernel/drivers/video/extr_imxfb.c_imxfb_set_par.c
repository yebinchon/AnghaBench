
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct imxfb_info {int palette_size; int cmap_static; } ;
struct fb_var_screeninfo {int bits_per_pixel; int xres_virtual; } ;
struct TYPE_2__ {int line_length; int visual; } ;
struct fb_info {TYPE_1__ fix; struct fb_var_screeninfo var; struct imxfb_info* par; } ;


 int FB_VISUAL_PSEUDOCOLOR ;
 int FB_VISUAL_STATIC_PSEUDOCOLOR ;
 int FB_VISUAL_TRUECOLOR ;
 int imxfb_activate_var (struct fb_var_screeninfo*,struct fb_info*) ;

__attribute__((used)) static int imxfb_set_par(struct fb_info *info)
{
 struct imxfb_info *fbi = info->par;
 struct fb_var_screeninfo *var = &info->var;

 if (var->bits_per_pixel == 16 || var->bits_per_pixel == 32)
  info->fix.visual = FB_VISUAL_TRUECOLOR;
 else if (!fbi->cmap_static)
  info->fix.visual = FB_VISUAL_PSEUDOCOLOR;
 else {





  info->fix.visual = FB_VISUAL_STATIC_PSEUDOCOLOR;
 }

 info->fix.line_length = var->xres_virtual * var->bits_per_pixel / 8;
 fbi->palette_size = var->bits_per_pixel == 8 ? 256 : 16;

 imxfb_activate_var(var, info);

 return 0;
}
