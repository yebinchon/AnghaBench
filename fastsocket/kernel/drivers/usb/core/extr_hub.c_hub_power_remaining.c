
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct usb_hub {int mA_per_port; int intfdev; TYPE_1__* descriptor; int limited_power; struct usb_device* hdev; } ;
struct usb_device {int bus_mA; int maxchild; int dev; scalar_t__ parent; TYPE_4__* bus; TYPE_3__* actconfig; struct usb_device** children; } ;
struct TYPE_8__ {int otg_port; } ;
struct TYPE_6__ {int bMaxPower; } ;
struct TYPE_7__ {TYPE_2__ desc; } ;
struct TYPE_5__ {int bHubContrCurrent; } ;


 int dev_warn (int ,char*,int,...) ;

__attribute__((used)) static unsigned
hub_power_remaining (struct usb_hub *hub)
{
 struct usb_device *hdev = hub->hdev;
 int remaining;
 int port1;

 if (!hub->limited_power)
  return 0;

 remaining = hdev->bus_mA - hub->descriptor->bHubContrCurrent;
 for (port1 = 1; port1 <= hdev->maxchild; ++port1) {
  struct usb_device *udev = hdev->children[port1 - 1];
  int delta;

  if (!udev)
   continue;



  if (udev->actconfig)
   delta = udev->actconfig->desc.bMaxPower * 2;
  else if (port1 != udev->bus->otg_port || hdev->parent)
   delta = 100;
  else
   delta = 8;
  if (delta > hub->mA_per_port)
   dev_warn(&udev->dev,
     "%dmA is over %umA budget for port %d!\n",
     delta, hub->mA_per_port, port1);
  remaining -= delta;
 }
 if (remaining < 0) {
  dev_warn(hub->intfdev, "%dmA over power budget!\n",
   - remaining);
  remaining = 0;
 }
 return remaining;
}
