
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int root_hub; int controller; } ;
struct usb_hcd {TYPE_1__ self; int flags; scalar_t__ rh_registered; struct usb_hcd* shared_hcd; } ;


 int HCD_FLAG_DEAD ;
 int HCD_FLAG_POLL_RH ;
 int HCD_FLAG_RH_RUNNING ;
 int USB_STATE_NOTATTACHED ;
 int clear_bit (int ,int *) ;
 int dev_err (int ,char*) ;
 int hcd_root_hub_lock ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ usb_hcd_is_primary_hcd (struct usb_hcd*) ;
 int usb_kick_khubd (int ) ;
 int usb_set_device_state (int ,int ) ;

void usb_hc_died (struct usb_hcd *hcd)
{
 unsigned long flags;

 dev_err (hcd->self.controller, "HC died; cleaning up\n");

 spin_lock_irqsave (&hcd_root_hub_lock, flags);
 clear_bit(HCD_FLAG_RH_RUNNING, &hcd->flags);
 set_bit(HCD_FLAG_DEAD, &hcd->flags);
 if (hcd->rh_registered) {
  clear_bit(HCD_FLAG_POLL_RH, &hcd->flags);


  usb_set_device_state (hcd->self.root_hub,
    USB_STATE_NOTATTACHED);
  usb_kick_khubd (hcd->self.root_hub);
 }
 if (usb_hcd_is_primary_hcd(hcd) && hcd->shared_hcd) {
  hcd = hcd->shared_hcd;
  if (hcd->rh_registered) {
   clear_bit(HCD_FLAG_POLL_RH, &hcd->flags);


   usb_set_device_state(hcd->self.root_hub,
     USB_STATE_NOTATTACHED);
   usb_kick_khubd(hcd->self.root_hub);
  }
 }
 spin_unlock_irqrestore (&hcd_root_hub_lock, flags);

}
