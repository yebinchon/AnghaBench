
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {struct usb_host_interface* cur_altsetting; } ;
struct TYPE_2__ {int bNumEndpoints; } ;
struct usb_host_interface {int * endpoint; TYPE_1__ desc; } ;
struct usb_device {int dummy; } ;


 int usb_enable_endpoint (struct usb_device*,int *,int) ;

void usb_enable_interface(struct usb_device *dev,
  struct usb_interface *intf, bool reset_eps)
{
 struct usb_host_interface *alt = intf->cur_altsetting;
 int i;

 for (i = 0; i < alt->desc.bNumEndpoints; ++i)
  usb_enable_endpoint(dev, &alt->endpoint[i], reset_eps);
}
