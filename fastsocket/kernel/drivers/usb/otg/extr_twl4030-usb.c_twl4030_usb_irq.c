
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct twl4030_usb {TYPE_1__* dev; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int kobj; } ;


 int IRQ_HANDLED ;
 int USB_LINK_NONE ;
 int USB_LINK_UNKNOWN ;
 int USB_LINK_VBUS ;
 int local_irq_enable () ;
 int sysfs_notify (int *,int *,char*) ;
 int twl4030_phy_resume (struct twl4030_usb*) ;
 int twl4030_phy_suspend (struct twl4030_usb*,int ) ;
 int twl4030_usb_linkstat (struct twl4030_usb*) ;
 int twl4030charger_usb_en (int) ;

__attribute__((used)) static irqreturn_t twl4030_usb_irq(int irq, void *_twl)
{
 struct twl4030_usb *twl = _twl;
 int status;
 status = twl4030_usb_linkstat(twl);
 if (status != USB_LINK_UNKNOWN) {
  twl4030charger_usb_en(status == USB_LINK_VBUS);

  if (status == USB_LINK_NONE)
   twl4030_phy_suspend(twl, 0);
  else
   twl4030_phy_resume(twl);
 }
 sysfs_notify(&twl->dev->kobj, ((void*)0), "vbus");

 return IRQ_HANDLED;
}
