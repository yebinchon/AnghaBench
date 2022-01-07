
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_var_screeninfo {int vmode; } ;
struct fb_info {int dummy; } ;


 int FB_VMODE_DOUBLE ;
 int FB_VMODE_MASK ;
 int FB_VMODE_NONINTERLACED ;
 scalar_t__ IS_DVT ;
 int i810_check_params (struct fb_var_screeninfo*,struct fb_info*) ;
 int i810_round_off (struct fb_var_screeninfo*) ;
 int i810fb_fill_var_timings (struct fb_var_screeninfo*) ;
 int set_color_bitfields (struct fb_var_screeninfo*) ;

__attribute__((used)) static int i810fb_check_var(struct fb_var_screeninfo *var,
       struct fb_info *info)
{
 int err;

 if (IS_DVT) {
  var->vmode &= ~FB_VMODE_MASK;
  var->vmode |= FB_VMODE_NONINTERLACED;
 }
 if (var->vmode & FB_VMODE_DOUBLE) {
  var->vmode &= ~FB_VMODE_MASK;
  var->vmode |= FB_VMODE_NONINTERLACED;
 }

 i810_round_off(var);
 if ((err = i810_check_params(var, info)))
  return err;

 i810fb_fill_var_timings(var);
 set_color_bitfields(var);
 return 0;
}
