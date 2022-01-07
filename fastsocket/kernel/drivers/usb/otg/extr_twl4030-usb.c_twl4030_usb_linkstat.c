
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int default_a; int state; } ;
struct twl4030_usb {int linkstat; int lock; TYPE_1__ otg; int dev; } ;
typedef enum linkstat { ____Placeholder_linkstat } linkstat ;


 int BIT (int) ;
 int OTG_STATE_A_IDLE ;
 int OTG_STATE_B_IDLE ;
 int STS_HW_CONDITIONS ;
 int TWL4030_MODULE_PM_MASTER ;
 int USB_LINK_ID ;
 int USB_LINK_NONE ;
 int USB_LINK_UNKNOWN ;
 int USB_LINK_VBUS ;
 int dev_dbg (int ,char*,int,int,int) ;
 int dev_err (int ,char*,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int twl4030_readb (struct twl4030_usb*,int ,int ) ;

__attribute__((used)) static enum linkstat twl4030_usb_linkstat(struct twl4030_usb *twl)
{
 int status;
 int linkstat = USB_LINK_UNKNOWN;
 status = twl4030_readb(twl, TWL4030_MODULE_PM_MASTER,
   STS_HW_CONDITIONS);
 if (status < 0)
  dev_err(twl->dev, "USB link status err %d\n", status);
 else if (status & (BIT(7) | BIT(2))) {
  if (status & BIT(2))
   linkstat = USB_LINK_ID;
  else
   linkstat = USB_LINK_VBUS;
 } else
  linkstat = USB_LINK_NONE;

 dev_dbg(twl->dev, "HW_CONDITIONS 0x%02x/%d; link %d\n",
   status, status, linkstat);





 spin_lock_irq(&twl->lock);
 twl->linkstat = linkstat;
 if (linkstat == USB_LINK_ID) {
  twl->otg.default_a = 1;
  twl->otg.state = OTG_STATE_A_IDLE;
 } else {
  twl->otg.default_a = 0;
  twl->otg.state = OTG_STATE_B_IDLE;
 }
 spin_unlock_irq(&twl->lock);

 return linkstat;
}
