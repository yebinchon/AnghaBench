
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct fb_info {int par; } ;


 int S1DREG_BBLT_CTL0 ;
 int dbg_blit (char*) ;
 int s1d13xxxfb_readreg (int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static u8
bltbit_wait_bitclear(struct fb_info *info, u8 bit, int timeout)
{
 while (s1d13xxxfb_readreg(info->par, S1DREG_BBLT_CTL0) & bit) {
  udelay(10);
  if (!--timeout) {
   dbg_blit("wait_bitclear timeout\n");
   break;
  }
 }

 return timeout;
}
