
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_hcd {int dummy; } ;
struct usb_device {int portnum; int devnum; TYPE_1__* parent; } ;
struct ehci_hcd {scalar_t__ has_lpm; } ;
struct TYPE_2__ {int parent; } ;


 int ehci_lpm_check (struct ehci_hcd*,int ) ;
 int ehci_lpm_set_da (struct ehci_hcd*,int ,int ) ;
 struct ehci_hcd* hcd_to_ehci (struct usb_hcd*) ;

__attribute__((used)) static int ehci_update_device(struct usb_hcd *hcd, struct usb_device *udev)
{
 struct ehci_hcd *ehci = hcd_to_ehci(hcd);
 int rc = 0;

 if (!udev->parent)
  rc = -1;

 if (ehci->has_lpm && !udev->parent->parent) {
  rc = ehci_lpm_set_da(ehci, udev->devnum, udev->portnum);
  if (!rc)
   rc = ehci_lpm_check(ehci, udev->portnum);
 }
 return rc;
}
