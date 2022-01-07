
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pxafb_mode_info {int dummy; } ;
struct pxafb_mach_info {scalar_t__ fixed_modes; } ;
struct pxafb_info {TYPE_1__* dev; } ;
struct fb_var_screeninfo {int dummy; } ;
struct fb_info {int dummy; } ;
struct TYPE_2__ {struct pxafb_mach_info* platform_data; } ;


 int EINVAL ;
 int pr_debug (char*,int ) ;
 int pxafb_adjust_timing (struct pxafb_info*,struct fb_var_screeninfo*) ;
 int pxafb_display_dma_period (struct fb_var_screeninfo*) ;
 struct pxafb_mode_info* pxafb_getmode (struct pxafb_mach_info*,struct fb_var_screeninfo*) ;
 int pxafb_set_pixfmt (struct fb_var_screeninfo*,int ) ;
 int pxafb_setmode (struct fb_var_screeninfo*,struct pxafb_mode_info*) ;
 int pxafb_var_to_bpp (struct fb_var_screeninfo*) ;
 int var_to_depth (struct fb_var_screeninfo*) ;

__attribute__((used)) static int pxafb_check_var(struct fb_var_screeninfo *var, struct fb_info *info)
{
 struct pxafb_info *fbi = (struct pxafb_info *)info;
 struct pxafb_mach_info *inf = fbi->dev->platform_data;
 int err;

 if (inf->fixed_modes) {
  struct pxafb_mode_info *mode;

  mode = pxafb_getmode(inf, var);
  if (!mode)
   return -EINVAL;
  pxafb_setmode(var, mode);
 }


 err = pxafb_var_to_bpp(var);
 if (err < 0)
  return err;

 pxafb_set_pixfmt(var, var_to_depth(var));

 err = pxafb_adjust_timing(fbi, var);
 if (err)
  return err;






 return 0;
}
