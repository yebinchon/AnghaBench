
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union xhci_trb {int dummy; } xhci_trb ;
struct xhci_hcd {int quirks; int lock; scalar_t__ slot_id; int num_active_eps; int addr_dev; TYPE_1__* cmd_ring; } ;
struct usb_hcd {int dummy; } ;
struct usb_device {scalar_t__ slot_id; } ;
struct TYPE_2__ {union xhci_trb* dequeue; } ;


 int GFP_NOIO ;
 int TRB_DISABLE_SLOT ;
 int TRB_ENABLE_SLOT ;
 int XHCI_CMD_DEFAULT_TIMEOUT ;
 int XHCI_EP_LIMIT_QUIRK ;
 struct xhci_hcd* hcd_to_xhci (struct usb_hcd*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_for_completion_interruptible_timeout (int *,int ) ;
 int xhci_alloc_virt_device (struct xhci_hcd*,scalar_t__,struct usb_device*,int ) ;
 int xhci_cancel_cmd (struct xhci_hcd*,int *,union xhci_trb*) ;
 int xhci_dbg (struct xhci_hcd*,char*) ;
 int xhci_err (struct xhci_hcd*,char*) ;
 int xhci_queue_slot_control (struct xhci_hcd*,int ,scalar_t__) ;
 int xhci_reserve_host_control_ep_resources (struct xhci_hcd*) ;
 int xhci_ring_cmd_db (struct xhci_hcd*) ;
 int xhci_warn (struct xhci_hcd*,char*,...) ;

int xhci_alloc_dev(struct usb_hcd *hcd, struct usb_device *udev)
{
 struct xhci_hcd *xhci = hcd_to_xhci(hcd);
 unsigned long flags;
 int timeleft;
 int ret;
 union xhci_trb *cmd_trb;

 spin_lock_irqsave(&xhci->lock, flags);
 cmd_trb = xhci->cmd_ring->dequeue;
 ret = xhci_queue_slot_control(xhci, TRB_ENABLE_SLOT, 0);
 if (ret) {
  spin_unlock_irqrestore(&xhci->lock, flags);
  xhci_dbg(xhci, "FIXME: allocate a command ring segment\n");
  return 0;
 }
 xhci_ring_cmd_db(xhci);
 spin_unlock_irqrestore(&xhci->lock, flags);


 timeleft = wait_for_completion_interruptible_timeout(&xhci->addr_dev,
   XHCI_CMD_DEFAULT_TIMEOUT);
 if (timeleft <= 0) {
  xhci_warn(xhci, "%s while waiting for a slot\n",
    timeleft == 0 ? "Timeout" : "Signal");

  return xhci_cancel_cmd(xhci, ((void*)0), cmd_trb);
 }

 if (!xhci->slot_id) {
  xhci_err(xhci, "Error while assigning device slot ID\n");
  return 0;
 }

 if ((xhci->quirks & XHCI_EP_LIMIT_QUIRK)) {
  spin_lock_irqsave(&xhci->lock, flags);
  ret = xhci_reserve_host_control_ep_resources(xhci);
  if (ret) {
   spin_unlock_irqrestore(&xhci->lock, flags);
   xhci_warn(xhci, "Not enough host resources, "
     "active endpoint contexts = %u\n",
     xhci->num_active_eps);
   goto disable_slot;
  }
  spin_unlock_irqrestore(&xhci->lock, flags);
 }




 if (!xhci_alloc_virt_device(xhci, xhci->slot_id, udev, GFP_NOIO)) {
  xhci_warn(xhci, "Could not allocate xHCI USB device data structures\n");
  goto disable_slot;
 }
 udev->slot_id = xhci->slot_id;


 return 1;

disable_slot:

 spin_lock_irqsave(&xhci->lock, flags);
 if (!xhci_queue_slot_control(xhci, TRB_DISABLE_SLOT, udev->slot_id))
  xhci_ring_cmd_db(xhci);
 spin_unlock_irqrestore(&xhci->lock, flags);
 return 0;
}
