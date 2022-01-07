
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct ohci_hcd {int dummy; } ;
struct ssb_ohci_device {struct ohci_hcd ohci; } ;


 struct ssb_ohci_device* hcd_to_ssb_ohci (struct usb_hcd*) ;
 int ohci_err (struct ohci_hcd*,char*) ;
 int ohci_run (struct ohci_hcd*) ;
 int ohci_stop (struct usb_hcd*) ;

__attribute__((used)) static int ssb_ohci_start(struct usb_hcd *hcd)
{
 struct ssb_ohci_device *ohcidev = hcd_to_ssb_ohci(hcd);
 struct ohci_hcd *ohci = &ohcidev->ohci;
 int err;

 err = ohci_run(ohci);
 if (err < 0) {
  ohci_err(ohci, "can't start\n");
  ohci_stop(hcd);
 }

 return err;
}
