
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct s1d13xxxfb_par {int display; } ;
struct TYPE_4__ {int line_length; } ;
struct TYPE_3__ {int bits_per_pixel; int xres; } ;
struct fb_info {TYPE_2__ fix; TYPE_1__ var; struct s1d13xxxfb_par* par; } ;


 int EINVAL ;
 int S1DREG_CRT_DISP_MODE ;
 int S1DREG_LCD_DISP_MODE ;
 int dbg (char*,...) ;
 unsigned int s1d13xxxfb_readreg (struct s1d13xxxfb_par*,int ) ;
 int s1d13xxxfb_setup_pseudocolour (struct fb_info*) ;
 int s1d13xxxfb_setup_truecolour (struct fb_info*) ;
 int s1d13xxxfb_writereg (struct s1d13xxxfb_par*,int ,unsigned int) ;

__attribute__((used)) static int
s1d13xxxfb_set_par(struct fb_info *info)
{
 struct s1d13xxxfb_par *s1dfb = info->par;
 unsigned int val;

 dbg("s1d13xxxfb_set_par: bpp=%d\n", info->var.bits_per_pixel);

 if ((s1dfb->display & 0x01))
  val = s1d13xxxfb_readreg(s1dfb, S1DREG_LCD_DISP_MODE);
 else
  val = s1d13xxxfb_readreg(s1dfb, S1DREG_CRT_DISP_MODE);

 val &= ~0x07;

 switch (info->var.bits_per_pixel) {
  case 4:
   dbg("pseudo colour 4\n");
   s1d13xxxfb_setup_pseudocolour(info);
   val |= 2;
   break;
  case 8:
   dbg("pseudo colour 8\n");
   s1d13xxxfb_setup_pseudocolour(info);
   val |= 3;
   break;
  case 16:
   dbg("true colour\n");
   s1d13xxxfb_setup_truecolour(info);
   val |= 5;
   break;

  default:
   dbg("bpp not supported!\n");
   return -EINVAL;
 }

 dbg("writing %02x to display mode register\n", val);

 if ((s1dfb->display & 0x01))
  s1d13xxxfb_writereg(s1dfb, S1DREG_LCD_DISP_MODE, val);
 else
  s1d13xxxfb_writereg(s1dfb, S1DREG_CRT_DISP_MODE, val);

 info->fix.line_length = info->var.xres * info->var.bits_per_pixel;
 info->fix.line_length /= 8;

 dbg("setting line_length to %d\n", info->fix.line_length);

 dbg("done setup\n");

 return 0;
}
