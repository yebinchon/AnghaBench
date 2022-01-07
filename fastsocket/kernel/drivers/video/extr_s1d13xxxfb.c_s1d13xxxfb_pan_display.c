
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct s1d13xxxfb_par {int display; } ;
struct fb_var_screeninfo {scalar_t__ xoffset; int yoffset; } ;
struct TYPE_4__ {int line_length; } ;
struct TYPE_3__ {scalar_t__ yres; scalar_t__ yres_virtual; } ;
struct fb_info {TYPE_2__ fix; TYPE_1__ var; struct s1d13xxxfb_par* par; } ;


 int EINVAL ;
 int S1DREG_CRT_DISP_START0 ;
 int S1DREG_CRT_DISP_START1 ;
 int S1DREG_CRT_DISP_START2 ;
 int S1DREG_LCD_DISP_START0 ;
 int S1DREG_LCD_DISP_START1 ;
 int S1DREG_LCD_DISP_START2 ;
 int s1d13xxxfb_writereg (struct s1d13xxxfb_par*,int ,int) ;

__attribute__((used)) static int
s1d13xxxfb_pan_display(struct fb_var_screeninfo *var, struct fb_info *info)
{
 struct s1d13xxxfb_par *par = info->par;
 u32 start;

 if (var->xoffset != 0)
  return -EINVAL;

 if (var->yoffset + info->var.yres > info->var.yres_virtual)
  return -EINVAL;

 start = (info->fix.line_length >> 1) * var->yoffset;

 if ((par->display & 0x01)) {

  s1d13xxxfb_writereg(par, S1DREG_LCD_DISP_START0, (start & 0xff));
  s1d13xxxfb_writereg(par, S1DREG_LCD_DISP_START1, ((start >> 8) & 0xff));
  s1d13xxxfb_writereg(par, S1DREG_LCD_DISP_START2, ((start >> 16) & 0x0f));
 } else {

  s1d13xxxfb_writereg(par, S1DREG_CRT_DISP_START0, (start & 0xff));
  s1d13xxxfb_writereg(par, S1DREG_CRT_DISP_START1, ((start >> 8) & 0xff));
  s1d13xxxfb_writereg(par, S1DREG_CRT_DISP_START2, ((start >> 16) & 0x0f));
 }

 return 0;
}
