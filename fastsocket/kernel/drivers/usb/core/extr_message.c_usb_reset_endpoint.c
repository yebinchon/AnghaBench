
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_host_endpoint {int dummy; } ;
struct usb_device {struct usb_host_endpoint** ep_in; struct usb_host_endpoint** ep_out; } ;


 unsigned int USB_ENDPOINT_NUMBER_MASK ;
 scalar_t__ usb_endpoint_out (unsigned int) ;
 int usb_hcd_reset_endpoint (struct usb_device*,struct usb_host_endpoint*) ;

void usb_reset_endpoint(struct usb_device *dev, unsigned int epaddr)
{
 unsigned int epnum = epaddr & USB_ENDPOINT_NUMBER_MASK;
 struct usb_host_endpoint *ep;

 if (usb_endpoint_out(epaddr))
  ep = dev->ep_out[epnum];
 else
  ep = dev->ep_in[epnum];
 if (ep)
  usb_hcd_reset_endpoint(dev, ep);
}
