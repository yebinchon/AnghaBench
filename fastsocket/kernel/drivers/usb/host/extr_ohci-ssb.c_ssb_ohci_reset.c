
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct ohci_hcd {int dummy; } ;
struct ssb_ohci_device {struct ohci_hcd ohci; } ;


 struct ssb_ohci_device* hcd_to_ssb_ohci (struct usb_hcd*) ;
 int ohci_hcd_init (struct ohci_hcd*) ;
 int ohci_init (struct ohci_hcd*) ;

__attribute__((used)) static int ssb_ohci_reset(struct usb_hcd *hcd)
{
 struct ssb_ohci_device *ohcidev = hcd_to_ssb_ohci(hcd);
 struct ohci_hcd *ohci = &ohcidev->ohci;
 int err;

 ohci_hcd_init(ohci);
 err = ohci_init(ohci);

 return err;
}
