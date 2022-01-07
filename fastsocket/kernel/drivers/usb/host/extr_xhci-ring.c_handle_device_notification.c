
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * field; } ;
union xhci_trb {TYPE_1__ generic; } ;
typedef size_t u32 ;
struct xhci_hcd {TYPE_2__** devs; } ;
struct usb_device {int portnum; scalar_t__ parent; } ;
struct TYPE_4__ {struct usb_device* udev; } ;


 size_t TRB_TO_SLOT_ID (int ) ;
 int usb_wakeup_notification (scalar_t__,int ) ;
 int xhci_dbg (struct xhci_hcd*,char*,size_t) ;
 int xhci_warn (struct xhci_hcd*,char*,size_t) ;

__attribute__((used)) static void handle_device_notification(struct xhci_hcd *xhci,
  union xhci_trb *event)
{
 u32 slot_id;
 struct usb_device *udev;

 slot_id = TRB_TO_SLOT_ID(event->generic.field[3]);
 if (!xhci->devs[slot_id]) {
  xhci_warn(xhci, "Device Notification event for "
    "unused slot %u\n", slot_id);
  return;
 }

 xhci_dbg(xhci, "Device Wake Notification event for slot ID %u\n",
   slot_id);
 udev = xhci->devs[slot_id]->udev;
 if (udev && udev->parent)
  usb_wakeup_notification(udev->parent, udev->portnum);
}
