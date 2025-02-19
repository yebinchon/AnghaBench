
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fb_var_screeninfo {int xoffset; int yoffset; } ;
struct TYPE_3__ {int xres_virtual; int bits_per_pixel; } ;
struct fb_info {TYPE_1__ var; scalar_t__ par; } ;
struct atafb_par {scalar_t__ screen_base; } ;
struct TYPE_4__ {int (* set_screen_base ) (scalar_t__) ;} ;


 int ATARIHW_PRESENT (int ) ;
 int EINVAL ;
 int EXTD_SHIFTER ;
 TYPE_2__* fbhw ;
 scalar_t__ screen_base ;
 int stub1 (scalar_t__) ;
 int up (int,int) ;

__attribute__((used)) static int pan_display(struct fb_var_screeninfo *var, struct fb_info *info)
{
 struct atafb_par *par = (struct atafb_par *)info->par;

 if (!fbhw->set_screen_base ||
     (!ATARIHW_PRESENT(EXTD_SHIFTER) && var->xoffset))
  return -EINVAL;
 var->xoffset = up(var->xoffset, 16);
 par->screen_base = screen_base +
         (var->yoffset * info->var.xres_virtual + var->xoffset)
         * info->var.bits_per_pixel / 8;
 fbhw->set_screen_base(par->screen_base);
 return 0;
}
