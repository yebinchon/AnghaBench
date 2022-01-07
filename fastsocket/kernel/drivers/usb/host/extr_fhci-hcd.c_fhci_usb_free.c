
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fhci_usb {struct fhci_usb* actual_frame; struct fhci_hcd* fhci; } ;
struct fhci_hcd {int dummy; } ;


 int FHCI_PORT_POWER_OFF ;
 int fhci_config_transceiver (struct fhci_hcd*,int ) ;
 int fhci_ep0_free (struct fhci_usb*) ;
 int kfree (struct fhci_usb*) ;

__attribute__((used)) static void fhci_usb_free(void *lld)
{
 struct fhci_usb *usb = lld;
 struct fhci_hcd *fhci = usb->fhci;

 if (usb) {
  fhci_config_transceiver(fhci, FHCI_PORT_POWER_OFF);
  fhci_ep0_free(usb);
  kfree(usb->actual_frame);
  kfree(usb);
 }
}
