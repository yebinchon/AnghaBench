
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;


 int usbip_uerr (char*) ;

__attribute__((used)) static int vhci_get_frame_number(struct usb_hcd *hcd)
{
 usbip_uerr("Not yet implemented\n");
 return 0;
}
