
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fb_var_screeninfo {int vmode; int yoffset; int xoffset; } ;
struct fb_info {int dummy; } ;
struct TYPE_4__ {int vmode; int yoffset; int xoffset; } ;
struct TYPE_3__ {TYPE_2__ var; } ;
struct cfb_info {TYPE_1__ fb; } ;


 int EINVAL ;
 int FB_VMODE_YWRAP ;
 scalar_t__ cyber2000fb_update_start (struct cfb_info*,struct fb_var_screeninfo*) ;

__attribute__((used)) static int
cyber2000fb_pan_display(struct fb_var_screeninfo *var, struct fb_info *info)
{
 struct cfb_info *cfb = (struct cfb_info *)info;

 if (cyber2000fb_update_start(cfb, var))
  return -EINVAL;

 cfb->fb.var.xoffset = var->xoffset;
 cfb->fb.var.yoffset = var->yoffset;

 if (var->vmode & FB_VMODE_YWRAP) {
  cfb->fb.var.vmode |= FB_VMODE_YWRAP;
 } else {
  cfb->fb.var.vmode &= ~FB_VMODE_YWRAP;
 }

 return 0;
}
