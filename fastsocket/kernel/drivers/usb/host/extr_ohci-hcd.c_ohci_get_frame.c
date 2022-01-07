
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct ohci_hcd {int dummy; } ;


 struct ohci_hcd* hcd_to_ohci (struct usb_hcd*) ;
 int ohci_frame_no (struct ohci_hcd*) ;

__attribute__((used)) static int ohci_get_frame (struct usb_hcd *hcd)
{
 struct ohci_hcd *ohci = hcd_to_ohci (hcd);

 return ohci_frame_no(ohci);
}
