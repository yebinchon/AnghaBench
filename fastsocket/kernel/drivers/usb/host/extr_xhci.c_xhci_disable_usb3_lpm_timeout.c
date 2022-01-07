
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct usb_device {int dummy; } ;
typedef enum usb3_link_state { ____Placeholder_usb3_link_state } usb3_link_state ;



int xhci_disable_usb3_lpm_timeout(struct usb_hcd *hcd,
   struct usb_device *udev, enum usb3_link_state state)
{
 return 0;
}
