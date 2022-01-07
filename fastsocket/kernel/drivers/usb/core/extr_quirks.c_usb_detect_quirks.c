
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct usb_device_id {scalar_t__ driver_info; } ;
struct TYPE_2__ {scalar_t__ bDeviceClass; } ;
struct usb_device {int autosuspend_disabled; int persist_enabled; TYPE_1__ descriptor; scalar_t__ quirks; int dev; } ;


 scalar_t__ USB_CLASS_HUB ;
 int dev_dbg (int *,char*,scalar_t__) ;
 struct usb_device_id* find_id (struct usb_device*) ;
 struct usb_device_id* usb_quirk_list ;

void usb_detect_quirks(struct usb_device *udev)
{
 const struct usb_device_id *id = usb_quirk_list;

 id = find_id(udev);
 if (id)
  udev->quirks = (u32)(id->driver_info);
 if (udev->quirks)
  dev_dbg(&udev->dev, "USB quirks for this device: %x\n",
    udev->quirks);
 udev->persist_enabled = 1;

}
