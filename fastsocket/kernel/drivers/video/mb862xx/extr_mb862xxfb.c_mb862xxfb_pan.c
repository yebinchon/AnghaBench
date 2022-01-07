
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mb862xxfb_par {int dummy; } ;
struct fb_var_screeninfo {int xres_virtual; int yres_virtual; int xoffset; int yoffset; } ;
struct fb_info {struct mb862xxfb_par* par; } ;


 int GC_L0WH_L0WW ;
 int GC_L0WY_L0WX ;
 int disp ;
 int outreg (int ,int ,unsigned long) ;
 unsigned long pack (int ,int ) ;

__attribute__((used)) static int mb862xxfb_pan(struct fb_var_screeninfo *var,
    struct fb_info *info)
{
 struct mb862xxfb_par *par = info->par;
 unsigned long reg;

 reg = pack(var->yoffset, var->xoffset);
 outreg(disp, GC_L0WY_L0WX, reg);

 reg = pack(var->yres_virtual, var->xres_virtual);
 outreg(disp, GC_L0WH_L0WW, reg);
 return 0;
}
