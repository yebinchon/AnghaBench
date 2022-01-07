
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int devt; } ;
struct usb_device {int devnum; int ep0; TYPE_2__ dev; TYPE_1__* bus; scalar_t__ parent; } ;
struct TYPE_8__ {int busnum; } ;


 int MKDEV (int ,int) ;
 int USB_DEVICE_MAJOR ;
 int USB_STATE_NOTATTACHED ;
 int announce_device (struct usb_device*) ;
 int dev_dbg (TYPE_2__*,char*,int,int,int) ;
 int dev_err (TYPE_2__*,char*,int) ;
 int device_add (TYPE_2__*) ;
 int device_init_wakeup (TYPE_2__*,int ) ;
 int device_set_wakeup_enable (TYPE_2__*,int) ;
 int usb_autoresume_device (scalar_t__) ;
 int usb_create_ep_devs (TYPE_2__*,int *,struct usb_device*) ;
 int usb_detect_quirks (struct usb_device*) ;
 int usb_enumerate_device (struct usb_device*) ;
 int usb_set_device_state (struct usb_device*,int ) ;
 int usb_stop_pm (struct usb_device*) ;

int usb_new_device(struct usb_device *udev)
{
 int err;

 if (udev->parent) {

  usb_autoresume_device(udev->parent);





  device_init_wakeup(&udev->dev, 0);
  device_set_wakeup_enable(&udev->dev, 1);
 }

 usb_detect_quirks(udev);
 err = usb_enumerate_device(udev);
 if (err < 0)
  goto fail;
 dev_dbg(&udev->dev, "udev %d, busnum %d, minor = %d\n",
   udev->devnum, udev->bus->busnum,
   (((udev->bus->busnum-1) * 128) + (udev->devnum-1)));

 udev->dev.devt = MKDEV(USB_DEVICE_MAJOR,
   (((udev->bus->busnum-1) * 128) + (udev->devnum-1)));


 announce_device(udev);





 err = device_add(&udev->dev);
 if (err) {
  dev_err(&udev->dev, "can't device_add, error %d\n", err);
  goto fail;
 }

 (void) usb_create_ep_devs(&udev->dev, &udev->ep0, udev);
 return err;

fail:
 usb_set_device_state(udev, USB_STATE_NOTATTACHED);
 usb_stop_pm(udev);
 return err;
}
