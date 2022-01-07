
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int iSerialNumber; int iManufacturer; int iProduct; } ;
struct usb_device {int wusb; scalar_t__ authorized; TYPE_1__ descriptor; void* serial; void* manufacturer; void* product; int dev; int * config; } ;


 int GFP_KERNEL ;
 int dev_err (int *,char*,int) ;
 void* kstrdup (char*,int ) ;
 void* usb_cache_string (struct usb_device*,int ) ;
 int usb_enumerate_device_otg (struct usb_device*) ;
 int usb_get_configuration (struct usb_device*) ;

__attribute__((used)) static int usb_enumerate_device(struct usb_device *udev)
{
 int err;

 if (udev->config == ((void*)0)) {
  err = usb_get_configuration(udev);
  if (err < 0) {
   dev_err(&udev->dev, "can't read configurations, error %d\n",
    err);
   goto fail;
  }
 }
 if (udev->wusb == 1 && udev->authorized == 0) {
  udev->product = kstrdup("n/a (unauthorized)", GFP_KERNEL);
  udev->manufacturer = kstrdup("n/a (unauthorized)", GFP_KERNEL);
  udev->serial = kstrdup("n/a (unauthorized)", GFP_KERNEL);
 }
 else {

  udev->product = usb_cache_string(udev, udev->descriptor.iProduct);
  udev->manufacturer = usb_cache_string(udev,
            udev->descriptor.iManufacturer);
  udev->serial = usb_cache_string(udev, udev->descriptor.iSerialNumber);
 }
 err = usb_enumerate_device_otg(udev);
fail:
 return err;
}
