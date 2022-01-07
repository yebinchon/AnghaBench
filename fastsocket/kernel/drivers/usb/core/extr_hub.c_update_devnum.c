
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int devnum; int wusb; } ;



__attribute__((used)) static void update_devnum(struct usb_device *udev, int devnum)
{

 if (!udev->wusb)
  udev->devnum = devnum;
}
