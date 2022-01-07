
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct usb_device {TYPE_1__* bus; } ;
struct TYPE_2__ {unsigned int sg_tablesize; } ;


 unsigned int SG_ALL ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;

__attribute__((used)) static unsigned int usb_stor_sg_tablesize(struct usb_interface *intf)
{
 struct usb_device *usb_dev = interface_to_usbdev(intf);

 if (usb_dev->bus->sg_tablesize) {
  return usb_dev->bus->sg_tablesize;
 }
 return SG_ALL;
}
