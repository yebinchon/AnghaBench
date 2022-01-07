
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_hcd {int dummy; } ;
struct ehci_hcd {int periodic_size; TYPE_1__* regs; } ;
struct TYPE_2__ {int frame_index; } ;


 int ehci_readl (struct ehci_hcd*,int *) ;
 struct ehci_hcd* hcd_to_ehci (struct usb_hcd*) ;

__attribute__((used)) static int ehci_get_frame (struct usb_hcd *hcd)
{
 struct ehci_hcd *ehci = hcd_to_ehci (hcd);
 return (ehci_readl(ehci, &ehci->regs->frame_index) >> 3) %
  ehci->periodic_size;
}
