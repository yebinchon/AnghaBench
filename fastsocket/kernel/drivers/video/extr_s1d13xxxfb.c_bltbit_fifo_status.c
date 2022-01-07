
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct fb_info {int par; } ;


 int BBLT_FIFO_EMPTY ;
 int BBLT_FIFO_FULL ;
 int BBLT_FIFO_NOT_FULL ;
 int S1DREG_BBLT_CTL0 ;
 int s1d13xxxfb_readreg (int ,int ) ;

__attribute__((used)) static u8
bltbit_fifo_status(struct fb_info *info)
{
 u8 status;

 status = s1d13xxxfb_readreg(info->par, S1DREG_BBLT_CTL0);


 if (status & BBLT_FIFO_EMPTY)
  return 16;


 if (status & BBLT_FIFO_FULL)
  return 0;


 if (status & BBLT_FIFO_NOT_FULL)
  return 1;

 return 0;
}
