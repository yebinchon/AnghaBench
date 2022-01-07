
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xhci_hcd {int quirks; TYPE_2__* op_regs; int lock; } ;
struct TYPE_3__ {int controller; } ;
struct usb_hcd {TYPE_1__ self; } ;
struct TYPE_4__ {int status; } ;


 int XHCI_SPURIOUS_REBOOT ;
 struct xhci_hcd* hcd_to_xhci (struct usb_hcd*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int to_pci_dev (int ) ;
 int usb_disable_xhci_ports (int ) ;
 int xhci_cleanup_msix (struct xhci_hcd*) ;
 int xhci_dbg (struct xhci_hcd*,char*,int ) ;
 int xhci_halt (struct xhci_hcd*) ;
 int xhci_readl (struct xhci_hcd*,int *) ;

void xhci_shutdown(struct usb_hcd *hcd)
{
 struct xhci_hcd *xhci = hcd_to_xhci(hcd);

 if (xhci->quirks & XHCI_SPURIOUS_REBOOT)
  usb_disable_xhci_ports(to_pci_dev(hcd->self.controller));

 spin_lock_irq(&xhci->lock);
 xhci_halt(xhci);
 spin_unlock_irq(&xhci->lock);

 xhci_cleanup_msix(xhci);

 xhci_dbg(xhci, "xhci_shutdown completed - status = %x\n",
      xhci_readl(xhci, &xhci->op_regs->status));
}
