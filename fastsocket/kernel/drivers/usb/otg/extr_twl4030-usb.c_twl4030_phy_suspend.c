
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twl4030_usb {int asleep; } ;


 int twl4030_phy_power (struct twl4030_usb*,int ) ;

__attribute__((used)) static void twl4030_phy_suspend(struct twl4030_usb *twl, int controller_off)
{
 if (twl->asleep)
  return;

 twl4030_phy_power(twl, 0);
 twl->asleep = 1;
}
