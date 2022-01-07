
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_var_screeninfo {int dummy; } ;
struct fb_info {int dummy; } ;


 int tcx_reset (struct fb_info*) ;

__attribute__((used)) static int tcx_pan_display(struct fb_var_screeninfo *var, struct fb_info *info)
{
 tcx_reset(info);
 return 0;
}
