
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int len; } ;
struct fb_info {TYPE_1__ cmap; } ;


 scalar_t__ fb_regs ;
 int in_be16 (scalar_t__) ;
 int out_be16 (scalar_t__,int) ;
 int udelay (int) ;

__attribute__((used)) static int hpfb_setcolreg(unsigned regno, unsigned red, unsigned green,
     unsigned blue, unsigned transp,
     struct fb_info *info)
{

 unsigned char _red =red>>8;
 unsigned char _green=green>>8;
 unsigned char _blue =blue>>8;
 unsigned char _regno=regno;
 if (regno >= info->cmap.len)
  return 1;

 while (in_be16(fb_regs + 0x6002) & 0x4) udelay(1);

 out_be16(fb_regs + 0x60ba, 0xff);

 out_be16(fb_regs + 0x60b2, _red);
 out_be16(fb_regs + 0x60b4, _green);
 out_be16(fb_regs + 0x60b6, _blue);
 out_be16(fb_regs + 0x60b8, ~_regno);
 out_be16(fb_regs + 0x60f0, 0xff);

 udelay(100);

 while (in_be16(fb_regs + 0x6002) & 0x4) udelay(1);
 out_be16(fb_regs + 0x60b2, 0);
 out_be16(fb_regs + 0x60b4, 0);
 out_be16(fb_regs + 0x60b6, 0);
 out_be16(fb_regs + 0x60b8, 0);

 return 0;
}
