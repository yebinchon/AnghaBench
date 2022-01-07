
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_device {scalar_t__ state; unsigned int maxchild; } ;
struct TYPE_2__ {void** port_owners; } ;


 int EINVAL ;
 int ENODEV ;
 scalar_t__ USB_STATE_NOTATTACHED ;
 TYPE_1__* hdev_to_hub (struct usb_device*) ;

__attribute__((used)) static int find_port_owner(struct usb_device *hdev, unsigned port1,
  void ***ppowner)
{
 if (hdev->state == USB_STATE_NOTATTACHED)
  return -ENODEV;
 if (port1 == 0 || port1 > hdev->maxchild)
  return -EINVAL;




 *ppowner = &(hdev_to_hub(hdev)->port_owners[port1 - 1]);
 return 0;
}
