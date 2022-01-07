
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int ep_devs_created; int dev; scalar_t__ unregistering; struct usb_host_interface* cur_altsetting; } ;
struct TYPE_2__ {int bNumEndpoints; } ;
struct usb_host_interface {int * endpoint; TYPE_1__ desc; } ;
struct usb_device {int dummy; } ;


 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int usb_create_ep_devs (int *,int *,struct usb_device*) ;

__attribute__((used)) static int create_intf_ep_devs(struct usb_interface *intf)
{
 struct usb_device *udev = interface_to_usbdev(intf);
 struct usb_host_interface *alt = intf->cur_altsetting;
 int i;

 if (intf->ep_devs_created || intf->unregistering)
  return 0;

 for (i = 0; i < alt->desc.bNumEndpoints; ++i)
  (void) usb_create_ep_devs(&intf->dev, &alt->endpoint[i], udev);
 intf->ep_devs_created = 1;
 return 0;
}
