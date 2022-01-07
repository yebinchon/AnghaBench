
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ffb_par {int dummy; } ;
struct fb_var_screeninfo {scalar_t__ vmode; scalar_t__ yoffset; scalar_t__ xoffset; } ;
struct fb_info {scalar_t__ par; } ;


 int EINVAL ;
 int ffb_switch_from_graph (struct ffb_par*) ;

__attribute__((used)) static int ffb_pan_display(struct fb_var_screeninfo *var, struct fb_info *info)
{
 struct ffb_par *par = (struct ffb_par *)info->par;




 ffb_switch_from_graph(par);

 if (var->xoffset || var->yoffset || var->vmode)
  return -EINVAL;
 return 0;
}
