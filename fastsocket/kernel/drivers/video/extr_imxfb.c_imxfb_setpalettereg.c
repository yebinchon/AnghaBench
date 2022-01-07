
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct imxfb_info {int palette_size; scalar_t__ regs; } ;
struct fb_info {struct imxfb_info* par; } ;


 int CNVT_TOHW (int,int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int imxfb_setpalettereg(u_int regno, u_int red, u_int green, u_int blue,
  u_int trans, struct fb_info *info)
{
 struct imxfb_info *fbi = info->par;
 u_int val, ret = 1;


 if (regno < fbi->palette_size) {
  val = (((((red)<<(4))+0x7FFF-(red))>>16) << 8) |
        (((((green)<<(4))+0x7FFF-(green))>>16) << 4) |
        ((((blue)<<(4))+0x7FFF-(blue))>>16);

  writel(val, fbi->regs + 0x800 + (regno << 2));
  ret = 0;
 }
 return ret;
}
