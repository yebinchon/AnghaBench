
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct twl4030_usb {int usb3v1; int usb1v8; int usb1v5; } ;


 int PHY_CLK_CTRL ;
 int PHY_CLK_CTRL_CLK32K_EN ;
 int PHY_CLK_CTRL_CLOCKGATING_EN ;
 int PHY_PWR_CTRL ;
 int PHY_PWR_PHYPWD ;
 int TWL4030_MODULE_PM_RECEIVER ;
 int VUSB_DEDICATED2 ;
 int WARN_ON (int) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;
 int twl4030_i2c_write_u8 (int ,int ,int ) ;
 int twl4030_usb_read (struct twl4030_usb*,int ) ;
 int twl4030_usb_write (struct twl4030_usb*,int ,int) ;
 scalar_t__ twl4030_usb_write_verify (struct twl4030_usb*,int ,int) ;

__attribute__((used)) static void twl4030_phy_power(struct twl4030_usb *twl, int on)
{
 u8 pwr;

 pwr = twl4030_usb_read(twl, PHY_PWR_CTRL);
 if (on) {
  regulator_enable(twl->usb3v1);
  regulator_enable(twl->usb1v8);







  twl4030_i2c_write_u8(TWL4030_MODULE_PM_RECEIVER, 0,
       VUSB_DEDICATED2);
  regulator_enable(twl->usb1v5);
  pwr &= ~PHY_PWR_PHYPWD;
  WARN_ON(twl4030_usb_write_verify(twl, PHY_PWR_CTRL, pwr) < 0);
  twl4030_usb_write(twl, PHY_CLK_CTRL,
      twl4030_usb_read(twl, PHY_CLK_CTRL) |
     (PHY_CLK_CTRL_CLOCKGATING_EN |
      PHY_CLK_CTRL_CLK32K_EN));
 } else {
  pwr |= PHY_PWR_PHYPWD;
  WARN_ON(twl4030_usb_write_verify(twl, PHY_PWR_CTRL, pwr) < 0);
  regulator_disable(twl->usb1v5);
  regulator_disable(twl->usb1v8);
  regulator_disable(twl->usb3v1);
 }
}
