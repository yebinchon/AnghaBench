
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_device {scalar_t__ state; int active_duration; int dev; TYPE_2__* actconfig; scalar_t__ parent; } ;
typedef enum usb_device_state { ____Placeholder_usb_device_state } usb_device_state ;
struct TYPE_3__ {int bmAttributes; } ;
struct TYPE_4__ {TYPE_1__ desc; } ;


 int USB_CONFIG_ATT_WAKEUP ;
 int USB_STATE_CONFIGURED ;
 scalar_t__ USB_STATE_NOTATTACHED ;
 scalar_t__ USB_STATE_SUSPENDED ;
 int device_set_wakeup_capable (int *,int) ;
 int device_state_lock ;
 scalar_t__ jiffies ;
 int recursively_mark_NOTATTACHED (struct usb_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void usb_set_device_state(struct usb_device *udev,
  enum usb_device_state new_state)
{
 unsigned long flags;

 spin_lock_irqsave(&device_state_lock, flags);
 if (udev->state == USB_STATE_NOTATTACHED)
  ;
 else if (new_state != USB_STATE_NOTATTACHED) {




  if (udev->parent) {
   if (udev->state == USB_STATE_SUSPENDED
     || new_state == USB_STATE_SUSPENDED)
    ;
   else if (new_state == USB_STATE_CONFIGURED)
    device_set_wakeup_capable(&udev->dev,
     (udev->actconfig->desc.bmAttributes
      & USB_CONFIG_ATT_WAKEUP));
   else
    device_set_wakeup_capable(&udev->dev, 0);
  }
  if (udev->state == USB_STATE_SUSPENDED &&
   new_state != USB_STATE_SUSPENDED)
   udev->active_duration -= jiffies;
  else if (new_state == USB_STATE_SUSPENDED &&
    udev->state != USB_STATE_SUSPENDED)
   udev->active_duration += jiffies;
  udev->state = new_state;
 } else
  recursively_mark_NOTATTACHED(udev);
 spin_unlock_irqrestore(&device_state_lock, flags);
}
