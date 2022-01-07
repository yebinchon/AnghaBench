
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xhci_hcd {TYPE_1__* run_regs; } ;
struct usb_hcd {int dummy; } ;
struct TYPE_2__ {int microframe_index; } ;


 struct xhci_hcd* hcd_to_xhci (struct usb_hcd*) ;
 int xhci_readl (struct xhci_hcd*,int *) ;

int xhci_get_frame(struct usb_hcd *hcd)
{
 struct xhci_hcd *xhci = hcd_to_xhci(hcd);

 return xhci_readl(xhci, &xhci->run_regs->microframe_index) >> 3;
}
