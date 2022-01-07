
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bInterval; int bEndpointAddress; } ;
struct usb_host_endpoint {TYPE_1__ desc; } ;
struct usb_device {scalar_t__ speed; int dev; } ;


 scalar_t__ USB_SPEED_FULL ;
 int clamp_val (int,int,int) ;
 int dev_warn (int *,char*,int ,int,char*) ;

__attribute__((used)) static unsigned int xhci_parse_exponent_interval(struct usb_device *udev,
  struct usb_host_endpoint *ep)
{
 unsigned int interval;

 interval = clamp_val(ep->desc.bInterval, 1, 16) - 1;
 if (interval != ep->desc.bInterval - 1)
  dev_warn(&udev->dev,
    "ep %#x - rounding interval to %d %sframes\n",
    ep->desc.bEndpointAddress,
    1 << interval,
    udev->speed == USB_SPEED_FULL ? "" : "micro");

 if (udev->speed == USB_SPEED_FULL) {





  interval += 3;
 }

 return interval;
}
