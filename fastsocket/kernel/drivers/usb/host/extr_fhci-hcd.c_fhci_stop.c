
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct fhci_hcd {int * usb_lld; } ;


 int fhci_mem_free (struct fhci_hcd*) ;
 int fhci_usb_disable (struct fhci_hcd*) ;
 int fhci_usb_disable_interrupt (int *) ;
 int fhci_usb_free (int *) ;
 struct fhci_hcd* hcd_to_fhci (struct usb_hcd*) ;

__attribute__((used)) static void fhci_stop(struct usb_hcd *hcd)
{
 struct fhci_hcd *fhci = hcd_to_fhci(hcd);

 fhci_usb_disable_interrupt(fhci->usb_lld);
 fhci_usb_disable(fhci);

 fhci_usb_free(fhci->usb_lld);
 fhci->usb_lld = ((void*)0);
 fhci_mem_free(fhci);
}
