
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_device {scalar_t__ speed; int dev; TYPE_1__* parent; TYPE_3__* bos; } ;
struct TYPE_6__ {int ss_cap; TYPE_2__* ext_cap; } ;
struct TYPE_5__ {int bmAttributes; } ;
struct TYPE_4__ {scalar_t__ lpm_capable; } ;


 int USB_LPM_SUPPORT ;
 scalar_t__ USB_SPEED_HIGH ;
 int dev_warn (int *,char*) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int usb_device_supports_lpm(struct usb_device *udev)
{



 if (udev->speed == USB_SPEED_HIGH) {
  if (udev->bos->ext_cap &&
   (USB_LPM_SUPPORT &
    le32_to_cpu(udev->bos->ext_cap->bmAttributes)))
   return 1;
  return 0;
 }




 if (!udev->bos->ss_cap) {
  dev_warn(&udev->dev, "No LPM exit latency info found.  "
    "Power management will be impacted.\n");
  return 0;
 }
 if (udev->parent->lpm_capable)
  return 1;

 dev_warn(&udev->dev, "Parent hub missing LPM exit latency info.  "
   "Power management will be impacted.\n");
 return 0;
}
