
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_hcd {int dummy; } ;
struct ohci_hcd {TYPE_1__* regs; } ;
struct TYPE_2__ {int control; int intrdisable; } ;


 int OHCI_INTR_MIE ;
 struct ohci_hcd* hcd_to_ohci (struct usb_hcd*) ;
 int ohci_readl (struct ohci_hcd*,int *) ;
 int ohci_usb_reset (struct ohci_hcd*) ;
 int ohci_writel (struct ohci_hcd*,int ,int *) ;

__attribute__((used)) static void
ohci_shutdown (struct usb_hcd *hcd)
{
 struct ohci_hcd *ohci;

 ohci = hcd_to_ohci (hcd);
 ohci_writel (ohci, OHCI_INTR_MIE, &ohci->regs->intrdisable);
 ohci_usb_reset (ohci);

 (void) ohci_readl (ohci, &ohci->regs->control);
}
