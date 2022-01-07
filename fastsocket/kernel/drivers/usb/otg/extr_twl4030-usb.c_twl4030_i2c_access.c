
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct twl4030_usb {int dev; } ;


 unsigned long HZ ;
 int PHY_CLK_CTRL ;
 int PHY_CLK_CTRL_STS ;
 int PHY_DPLL_CLK ;
 int REQ_PHY_DPLL_CLK ;
 int WARN_ON (int) ;
 int dev_err (int ,char*) ;
 unsigned long jiffies ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 int twl4030_usb_read (struct twl4030_usb*,int ) ;
 scalar_t__ twl4030_usb_write_verify (struct twl4030_usb*,int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static void twl4030_i2c_access(struct twl4030_usb *twl, int on)
{
 unsigned long timeout;
 int val = twl4030_usb_read(twl, PHY_CLK_CTRL);

 if (val >= 0) {
  if (on) {

   val |= REQ_PHY_DPLL_CLK;
   WARN_ON(twl4030_usb_write_verify(twl, PHY_CLK_CTRL,
      (u8)val) < 0);

   timeout = jiffies + HZ;
   while (!(twl4030_usb_read(twl, PHY_CLK_CTRL_STS) &
       PHY_DPLL_CLK)
    && time_before(jiffies, timeout))
     udelay(10);
   if (!(twl4030_usb_read(twl, PHY_CLK_CTRL_STS) &
       PHY_DPLL_CLK))
    dev_err(twl->dev, "Timeout setting T2 HSUSB "
      "PHY DPLL clock\n");
  } else {

   val &= ~REQ_PHY_DPLL_CLK;
   WARN_ON(twl4030_usb_write_verify(twl, PHY_CLK_CTRL,
      (u8)val) < 0);
  }
 }
}
