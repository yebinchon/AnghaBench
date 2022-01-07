
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union xhci_trb {int dummy; } xhci_trb ;
struct xhci_hcd {int xhc_state; int lock; } ;
struct xhci_command {int dummy; } ;
struct TYPE_2__ {int primary_hcd; } ;


 int ESHUTDOWN ;
 int XHCI_STATE_DYING ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;
 int usb_hc_died (int ) ;
 int xhci_abort_cmd_ring (struct xhci_hcd*) ;
 int xhci_dbg (struct xhci_hcd*,char*) ;
 int xhci_err (struct xhci_hcd*,char*) ;
 int xhci_queue_cd (struct xhci_hcd*,struct xhci_command*,union xhci_trb*) ;
 TYPE_1__* xhci_to_hcd (struct xhci_hcd*) ;
 int xhci_warn (struct xhci_hcd*,char*) ;

int xhci_cancel_cmd(struct xhci_hcd *xhci, struct xhci_command *command,
  union xhci_trb *cmd_trb)
{
 int retval = 0;
 unsigned long flags;

 spin_lock_irqsave(&xhci->lock, flags);

 if (xhci->xhc_state & XHCI_STATE_DYING) {
  xhci_warn(xhci, "Abort the command ring,"
    " but the xHCI is dead.\n");
  retval = -ESHUTDOWN;
  goto fail;
 }


 retval = xhci_queue_cd(xhci, command, cmd_trb);
 if (retval) {
  xhci_warn(xhci, "Queuing command descriptor failed.\n");
  goto fail;
 }


 retval = xhci_abort_cmd_ring(xhci);
 if (retval) {
  xhci_err(xhci, "Abort command ring failed\n");
  if (unlikely(retval == -ESHUTDOWN)) {
   spin_unlock_irqrestore(&xhci->lock, flags);
   usb_hc_died(xhci_to_hcd(xhci)->primary_hcd);
   xhci_dbg(xhci, "xHCI host controller is dead.\n");
   return retval;
  }
 }

fail:
 spin_unlock_irqrestore(&xhci->lock, flags);
 return retval;
}
