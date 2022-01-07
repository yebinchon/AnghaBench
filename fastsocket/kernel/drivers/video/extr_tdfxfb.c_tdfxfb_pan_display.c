
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tdfx_par {int dummy; } ;
struct fb_var_screeninfo {int yoffset; scalar_t__ xoffset; } ;
struct TYPE_2__ {int line_length; } ;
struct fb_info {TYPE_1__ fix; struct tdfx_par* par; } ;


 int EINVAL ;
 int VIDDESKSTART ;
 int banshee_make_room (struct tdfx_par*,int) ;
 scalar_t__ nopan ;
 int tdfx_outl (struct tdfx_par*,int ,int) ;

__attribute__((used)) static int tdfxfb_pan_display(struct fb_var_screeninfo *var,
         struct fb_info *info)
{
 struct tdfx_par *par = info->par;
 u32 addr = var->yoffset * info->fix.line_length;

 if (nopan || var->xoffset)
  return -EINVAL;

 banshee_make_room(par, 1);
 tdfx_outl(par, VIDDESKSTART, addr);

 return 0;
}
