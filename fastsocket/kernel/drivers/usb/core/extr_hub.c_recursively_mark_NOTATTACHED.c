
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int maxchild; scalar_t__ state; int discon_suspended; int active_duration; struct usb_device** children; } ;


 scalar_t__ USB_STATE_NOTATTACHED ;
 scalar_t__ USB_STATE_SUSPENDED ;
 scalar_t__ jiffies ;

__attribute__((used)) static void recursively_mark_NOTATTACHED(struct usb_device *udev)
{
 int i;

 for (i = 0; i < udev->maxchild; ++i) {
  if (udev->children[i])
   recursively_mark_NOTATTACHED(udev->children[i]);
 }
 if (udev->state == USB_STATE_SUSPENDED) {
  udev->discon_suspended = 1;
  udev->active_duration -= jiffies;
 }
 udev->state = USB_STATE_NOTATTACHED;
}
