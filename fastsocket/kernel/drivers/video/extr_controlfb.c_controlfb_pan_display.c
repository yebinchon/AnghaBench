
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_var_screeninfo {unsigned int xoffset; scalar_t__ yoffset; } ;
struct fb_par_control {int cmode; scalar_t__ xres; scalar_t__ vxres; scalar_t__ yres; scalar_t__ vyres; } ;
struct fb_info_control {struct fb_par_control par; } ;
struct fb_info {int dummy; } ;


 int EINVAL ;
 int set_screen_start (unsigned int,scalar_t__,struct fb_info_control*) ;

__attribute__((used)) static int controlfb_pan_display(struct fb_var_screeninfo *var,
     struct fb_info *info)
{
 unsigned int xoffset, hstep;
 struct fb_info_control *p = (struct fb_info_control *)info;
 struct fb_par_control *par = &p->par;




 hstep = 0x1f >> par->cmode;
 xoffset = (var->xoffset + hstep) & ~hstep;

 if (xoffset+par->xres > par->vxres ||
     var->yoffset+par->yres > par->vyres)
  return -EINVAL;

 set_screen_start(xoffset, var->yoffset, p);

 return 0;
}
