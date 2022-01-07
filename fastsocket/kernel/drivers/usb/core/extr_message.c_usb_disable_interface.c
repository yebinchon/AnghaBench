
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_interface {struct usb_host_interface* cur_altsetting; } ;
struct TYPE_4__ {int bNumEndpoints; } ;
struct usb_host_interface {TYPE_3__* endpoint; TYPE_1__ desc; } ;
struct usb_device {int dummy; } ;
struct TYPE_5__ {int bEndpointAddress; } ;
struct TYPE_6__ {TYPE_2__ desc; } ;


 int usb_disable_endpoint (struct usb_device*,int ,int) ;

void usb_disable_interface(struct usb_device *dev, struct usb_interface *intf,
  bool reset_hardware)
{
 struct usb_host_interface *alt = intf->cur_altsetting;
 int i;

 for (i = 0; i < alt->desc.bNumEndpoints; ++i) {
  usb_disable_endpoint(dev,
    alt->endpoint[i].desc.bEndpointAddress,
    reset_hardware);
 }
}
