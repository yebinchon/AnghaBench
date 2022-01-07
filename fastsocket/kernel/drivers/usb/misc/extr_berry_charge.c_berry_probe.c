
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_6__ {int idProduct; } ;
struct usb_device {int bus_mA; TYPE_3__ descriptor; TYPE_2__* actconfig; int dev; } ;
struct TYPE_4__ {int bMaxPower; } ;
struct TYPE_5__ {TYPE_1__ desc; } ;


 scalar_t__ BLACKBERRY_PEARL ;
 int ENODEV ;
 int dbg (int *,char*,...) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 scalar_t__ le16_to_cpu (int ) ;
 int magic_charge (struct usb_device*) ;
 int magic_dual_mode (struct usb_device*) ;
 scalar_t__ pearl_dual_mode ;

__attribute__((used)) static int berry_probe(struct usb_interface *intf,
         const struct usb_device_id *id)
{
 struct usb_device *udev = interface_to_usbdev(intf);

 if (udev->bus_mA < 500) {
  dbg(&udev->dev, "Not enough power to charge available\n");
  return -ENODEV;
 }

 dbg(&udev->dev, "Power is set to %dmA\n",
     udev->actconfig->desc.bMaxPower * 2);



 if ((udev->actconfig->desc.bMaxPower * 2) == 500) {
  dbg(&udev->dev, "device is already charging, power is "
      "set to %dmA\n", udev->actconfig->desc.bMaxPower * 2);
  return -ENODEV;
 }


 magic_charge(udev);

 if ((le16_to_cpu(udev->descriptor.idProduct) == BLACKBERRY_PEARL) &&
     (pearl_dual_mode))
  magic_dual_mode(udev);



 return -ENODEV;
}
