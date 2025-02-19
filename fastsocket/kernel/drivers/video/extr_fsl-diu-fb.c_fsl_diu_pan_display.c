
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fb_var_screeninfo {scalar_t__ xoffset; scalar_t__ yoffset; int vmode; } ;
struct TYPE_2__ {scalar_t__ xoffset; scalar_t__ yoffset; scalar_t__ xres; scalar_t__ xres_virtual; scalar_t__ yres; scalar_t__ yres_virtual; int vmode; } ;
struct fb_info {TYPE_1__ var; } ;


 int EINVAL ;
 int FB_VMODE_YWRAP ;
 int fsl_diu_set_aoi (struct fb_info*) ;

__attribute__((used)) static int fsl_diu_pan_display(struct fb_var_screeninfo *var,
        struct fb_info *info)
{
 if ((info->var.xoffset == var->xoffset) &&
     (info->var.yoffset == var->yoffset))
  return 0;

 if (var->xoffset < 0 || var->yoffset < 0
     || var->xoffset + info->var.xres > info->var.xres_virtual
     || var->yoffset + info->var.yres > info->var.yres_virtual)
  return -EINVAL;

 info->var.xoffset = var->xoffset;
 info->var.yoffset = var->yoffset;

 if (var->vmode & FB_VMODE_YWRAP)
  info->var.vmode |= FB_VMODE_YWRAP;
 else
  info->var.vmode &= ~FB_VMODE_YWRAP;

 fsl_diu_set_aoi(info);

 return 0;
}
