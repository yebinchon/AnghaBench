
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_hcd {scalar_t__ shared_hcd; } ;
struct pci_dev {int dummy; } ;


 struct xhci_hcd* hcd_to_xhci (int ) ;
 int kfree (struct xhci_hcd*) ;
 int pci_get_drvdata (struct pci_dev*) ;
 int usb_hcd_pci_remove (struct pci_dev*) ;
 int usb_put_hcd (scalar_t__) ;
 int usb_remove_hcd (scalar_t__) ;

__attribute__((used)) static void xhci_pci_remove(struct pci_dev *dev)
{
 struct xhci_hcd *xhci;

 xhci = hcd_to_xhci(pci_get_drvdata(dev));
 if (xhci->shared_hcd) {
  usb_remove_hcd(xhci->shared_hcd);
  usb_put_hcd(xhci->shared_hcd);
 }
 usb_hcd_pci_remove(dev);
 kfree(xhci);
}
