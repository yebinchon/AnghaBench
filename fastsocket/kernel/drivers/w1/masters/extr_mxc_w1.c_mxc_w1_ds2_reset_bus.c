
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mxc_w1_device {scalar_t__ regs; } ;


 scalar_t__ MXC_W1_CONTROL ;
 unsigned int MXC_W1_RESET_TIMEOUT ;
 int __raw_readb (scalar_t__) ;
 int __raw_writeb (int,scalar_t__) ;
 int udelay (int) ;

__attribute__((used)) static u8 mxc_w1_ds2_reset_bus(void *data)
{
 u8 reg_val;
 unsigned int timeout_cnt = 0;
 struct mxc_w1_device *dev = data;

 __raw_writeb(0x80, (dev->regs + MXC_W1_CONTROL));

 while (1) {
  reg_val = __raw_readb(dev->regs + MXC_W1_CONTROL);

  if (((reg_val >> 7) & 0x1) == 0 ||
      timeout_cnt > MXC_W1_RESET_TIMEOUT)
   break;
  else
   timeout_cnt++;

  udelay(100);
 }
 return (reg_val >> 7) & 0x1;
}
