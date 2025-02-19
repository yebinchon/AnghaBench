
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct fb_var_screeninfo {scalar_t__ yoffset; int vmode; scalar_t__ yres; scalar_t__ yres_virtual; } ;
struct fb_info {int dummy; } ;


 int BUG_ON (int) ;
 int FB_VMODE_YWRAP ;
 int acornfb_update_dma (struct fb_info*,struct fb_var_screeninfo*) ;

__attribute__((used)) static int
acornfb_pan_display(struct fb_var_screeninfo *var, struct fb_info *info)
{
 u_int y_bottom = var->yoffset;

 if (!(var->vmode & FB_VMODE_YWRAP))
  y_bottom += var->yres;

 BUG_ON(y_bottom > var->yres_virtual);

 acornfb_update_dma(info, var);

 return 0;
}
