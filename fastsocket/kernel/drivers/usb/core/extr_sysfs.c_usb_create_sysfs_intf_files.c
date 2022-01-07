
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int sysfs_files_created; int dev; scalar_t__ unregistering; struct usb_host_interface* cur_altsetting; } ;
struct TYPE_2__ {int iInterface; } ;
struct usb_host_interface {int * string; TYPE_1__ desc; } ;
struct usb_device {int quirks; } ;


 int USB_QUIRK_CONFIG_INTF_STRINGS ;
 int dev_attr_interface ;
 int device_create_file (int *,int *) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int * usb_cache_string (struct usb_device*,int ) ;

int usb_create_sysfs_intf_files(struct usb_interface *intf)
{
 struct usb_device *udev = interface_to_usbdev(intf);
 struct usb_host_interface *alt = intf->cur_altsetting;
 int retval;

 if (intf->sysfs_files_created || intf->unregistering)
  return 0;

 if (alt->string == ((void*)0) &&
   !(udev->quirks & USB_QUIRK_CONFIG_INTF_STRINGS))
  alt->string = usb_cache_string(udev, alt->desc.iInterface);
 if (alt->string)
  retval = device_create_file(&intf->dev, &dev_attr_interface);
 intf->sysfs_files_created = 1;
 return 0;
}
