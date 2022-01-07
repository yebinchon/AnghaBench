
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int dummy; } ;


 scalar_t__ TC_NBLANK ;
 int fb_bitmask ;
 scalar_t__ fb_regs ;
 int out_8 (scalar_t__,int) ;

__attribute__((used)) static int hpfb_blank(int blank, struct fb_info *info)
{
 out_8(fb_regs + TC_NBLANK, (blank ? 0x00 : fb_bitmask));

 return 0;
}
