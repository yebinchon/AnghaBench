
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twl4030_usb {scalar_t__ usb_mode; scalar_t__ asleep; } ;


 scalar_t__ T2_USB_MODE_ULPI ;
 int twl4030_i2c_access (struct twl4030_usb*,int) ;
 int twl4030_phy_power (struct twl4030_usb*,int) ;
 int twl4030_usb_set_mode (struct twl4030_usb*,scalar_t__) ;

__attribute__((used)) static void twl4030_phy_resume(struct twl4030_usb *twl)
{
 if (!twl->asleep)
  return;

 twl4030_phy_power(twl, 1);
 twl4030_i2c_access(twl, 1);
 twl4030_usb_set_mode(twl, twl->usb_mode);
 if (twl->usb_mode == T2_USB_MODE_ULPI)
  twl4030_i2c_access(twl, 0);
 twl->asleep = 0;
}
