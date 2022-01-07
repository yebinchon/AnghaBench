
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct geodefb_par {scalar_t__ dc_regs; } ;
struct fb_info {struct geodefb_par* par; } ;


 scalar_t__ DC_PAL_ADDRESS ;
 scalar_t__ DC_PAL_DATA ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void gx1_set_hw_palette_reg(struct fb_info *info, unsigned regno,
       unsigned red, unsigned green, unsigned blue)
{
 struct geodefb_par *par = info->par;
 int val;


 val = (red << 2) & 0x3f000;
 val |= (green >> 4) & 0x00fc0;
 val |= (blue >> 10) & 0x0003f;

 writel(regno, par->dc_regs + DC_PAL_ADDRESS);
 writel(val, par->dc_regs + DC_PAL_DATA);
}
