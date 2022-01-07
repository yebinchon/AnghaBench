
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_hub {int dummy; } ;
struct usb_device {TYPE_1__* actconfig; } ;
struct TYPE_2__ {int * interface; } ;


 struct usb_hub* usb_get_intfdata (int ) ;

__attribute__((used)) static struct usb_hub *hdev_to_hub(struct usb_device *hdev)
{
 if (!hdev || !hdev->actconfig)
  return ((void*)0);
 return usb_get_intfdata(hdev->actconfig->interface[0]);
}
