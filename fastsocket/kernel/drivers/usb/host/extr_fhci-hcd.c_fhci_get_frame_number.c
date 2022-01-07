
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct fhci_hcd {int dummy; } ;


 int get_frame_num (struct fhci_hcd*) ;
 struct fhci_hcd* hcd_to_fhci (struct usb_hcd*) ;

__attribute__((used)) static int fhci_get_frame_number(struct usb_hcd *hcd)
{
 struct fhci_hcd *fhci = hcd_to_fhci(hcd);

 return get_frame_num(fhci);
}
