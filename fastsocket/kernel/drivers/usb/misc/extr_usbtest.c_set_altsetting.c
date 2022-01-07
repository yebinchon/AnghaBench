
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usbtest_dev {struct usb_interface* intf; } ;
struct usb_interface {TYPE_2__* altsetting; } ;
struct usb_device {int dummy; } ;
struct TYPE_3__ {int bInterfaceNumber; } ;
struct TYPE_4__ {TYPE_1__ desc; } ;


 int EINVAL ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int usb_set_interface (struct usb_device*,int ,int) ;

__attribute__((used)) static int set_altsetting (struct usbtest_dev *dev, int alternate)
{
 struct usb_interface *iface = dev->intf;
 struct usb_device *udev;

 if (alternate < 0 || alternate >= 256)
  return -EINVAL;

 udev = interface_to_usbdev (iface);
 return usb_set_interface (udev,
   iface->altsetting [0].desc.bInterfaceNumber,
   alternate);
}
