
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int ;
typedef int u32 ;
typedef int u16 ;
struct omapfb_plane_struct {int color_mode; struct omapfb_device* fbdev; } ;
struct omapfb_device {TYPE_1__* ctrl; } ;
struct TYPE_8__ {int length; } ;
struct TYPE_7__ {int offset; int length; } ;
struct TYPE_6__ {int offset; int length; } ;
struct fb_var_screeninfo {TYPE_4__ blue; TYPE_3__ green; TYPE_2__ red; } ;
struct fb_info {scalar_t__ pseudo_palette; struct fb_var_screeninfo var; struct omapfb_plane_struct* par; } ;
struct TYPE_5__ {int (* setcolreg ) (int,int,int,int,int,int) ;} ;


 int BUG () ;
 int EINVAL ;
 int stub1 (int,int,int,int,int,int) ;

__attribute__((used)) static int _setcolreg(struct fb_info *info, u_int regno, u_int red, u_int green,
   u_int blue, u_int transp, int update_hw_pal)
{
 struct omapfb_plane_struct *plane = info->par;
 struct omapfb_device *fbdev = plane->fbdev;
 struct fb_var_screeninfo *var = &info->var;
 int r = 0;

 switch (plane->color_mode) {
 case 129:
 case 130:
 case 128:
  r = -EINVAL;
  break;
 case 133:
 case 134:
 case 135:
 case 136:
  if (fbdev->ctrl->setcolreg)
   r = fbdev->ctrl->setcolreg(regno, red, green, blue,
       transp, update_hw_pal);

 case 131:
 case 132:
  if (r != 0)
   break;

  if (regno < 0) {
   r = -EINVAL;
   break;
  }

  if (regno < 16) {
   u16 pal;
   pal = ((red >> (16 - var->red.length)) <<
     var->red.offset) |
         ((green >> (16 - var->green.length)) <<
     var->green.offset) |
         (blue >> (16 - var->blue.length));
   ((u32 *)(info->pseudo_palette))[regno] = pal;
  }
  break;
 default:
  BUG();
 }
 return r;
}
