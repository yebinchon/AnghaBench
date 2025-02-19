
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned int u32 ;
struct fb_info {int dummy; } ;
struct TYPE_5__ {scalar_t__ visual; } ;
struct TYPE_4__ {int red; int green; int blue; int transp; } ;
struct TYPE_6__ {TYPE_2__ fix; TYPE_1__ var; } ;
struct clcd_fb {int* cmap; int clcd_cntl; scalar_t__ regs; TYPE_3__ fb; } ;


 unsigned int CLCD_PALETTE ;
 int CNTL_BEBO ;
 scalar_t__ FB_VISUAL_PSEUDOCOLOR ;
 int convert_bitfield (unsigned int,int *) ;
 unsigned int readl (scalar_t__) ;
 struct clcd_fb* to_clcd (struct fb_info*) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static int
clcdfb_setcolreg(unsigned int regno, unsigned int red, unsigned int green,
   unsigned int blue, unsigned int transp, struct fb_info *info)
{
 struct clcd_fb *fb = to_clcd(info);

 if (regno < 16)
  fb->cmap[regno] = convert_bitfield(transp, &fb->fb.var.transp) |
      convert_bitfield(blue, &fb->fb.var.blue) |
      convert_bitfield(green, &fb->fb.var.green) |
      convert_bitfield(red, &fb->fb.var.red);

 if (fb->fb.fix.visual == FB_VISUAL_PSEUDOCOLOR && regno < 256) {
  int hw_reg = CLCD_PALETTE + ((regno * 2) & ~3);
  u32 val, mask, newval;

  newval = (red >> 11) & 0x001f;
  newval |= (green >> 6) & 0x03e0;
  newval |= (blue >> 1) & 0x7c00;





  if (fb->clcd_cntl & CNTL_BEBO)
   regno ^= 1;

  if (regno & 1) {
   newval <<= 16;
   mask = 0x0000ffff;
  } else {
   mask = 0xffff0000;
  }

  val = readl(fb->regs + hw_reg) & mask;
  writel(val | newval, fb->regs + hw_reg);
 }

 return regno > 255;
}
