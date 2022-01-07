
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct usb_host_endpoint {TYPE_2__* ss_ep_comp; int desc; } ;
struct usb_device {scalar_t__ speed; } ;
struct TYPE_3__ {int bmAttributes; } ;
struct TYPE_4__ {TYPE_1__ desc; } ;


 scalar_t__ USB_SPEED_SUPER ;
 int usb_endpoint_xfer_isoc (int *) ;

__attribute__((used)) static u32 xhci_get_endpoint_mult(struct usb_device *udev,
  struct usb_host_endpoint *ep)
{
 if (udev->speed != USB_SPEED_SUPER || !ep->ss_ep_comp ||
   !usb_endpoint_xfer_isoc(&ep->desc))
  return 0;
 return ep->ss_ep_comp->desc.bmAttributes;
}
