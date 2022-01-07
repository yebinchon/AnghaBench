
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_hcd {int lock; int * shared_hcd; } ;
struct usb_hcd {int dummy; } ;


 struct xhci_hcd* hcd_to_xhci (struct usb_hcd*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int xhci_halt (struct xhci_hcd*) ;

__attribute__((used)) static void xhci_only_stop_hcd(struct usb_hcd *hcd)
{
 struct xhci_hcd *xhci = hcd_to_xhci(hcd);

 spin_lock_irq(&xhci->lock);
 xhci_halt(xhci);





 xhci->shared_hcd = ((void*)0);
 spin_unlock_irq(&xhci->lock);
}
