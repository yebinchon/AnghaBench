
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hub {int * port_owners; } ;
struct usb_device {scalar_t__ state; int portnum; int parent; } ;


 scalar_t__ USB_STATE_NOTATTACHED ;
 struct usb_hub* hdev_to_hub (int ) ;

bool usb_device_is_owned(struct usb_device *udev)
{
 struct usb_hub *hub;

 if (udev->state == USB_STATE_NOTATTACHED || !udev->parent)
  return 0;
 hub = hdev_to_hub(udev->parent);
 return !!hub->port_owners[udev->portnum - 1];
}
