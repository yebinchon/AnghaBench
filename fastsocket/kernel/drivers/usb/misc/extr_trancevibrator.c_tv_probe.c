
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dev; } ;
struct usb_device_id {int dummy; } ;
struct usb_device {int dummy; } ;
struct trancevibrator {int udev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_attr_speed ;
 int dev_err (int *,char*) ;
 int device_create_file (int *,int *) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int kfree (struct trancevibrator*) ;
 struct trancevibrator* kzalloc (int,int ) ;
 int usb_get_dev (struct usb_device*) ;
 int usb_put_dev (struct usb_device*) ;
 int usb_set_intfdata (struct usb_interface*,struct trancevibrator*) ;

__attribute__((used)) static int tv_probe(struct usb_interface *interface,
      const struct usb_device_id *id)
{
 struct usb_device *udev = interface_to_usbdev(interface);
 struct trancevibrator *dev;
 int retval;

 dev = kzalloc(sizeof(struct trancevibrator), GFP_KERNEL);
 if (dev == ((void*)0)) {
  dev_err(&interface->dev, "Out of memory\n");
  retval = -ENOMEM;
  goto error;
 }

 dev->udev = usb_get_dev(udev);
 usb_set_intfdata(interface, dev);
 retval = device_create_file(&interface->dev, &dev_attr_speed);
 if (retval)
  goto error_create_file;

 return 0;

error_create_file:
 usb_put_dev(udev);
 usb_set_intfdata(interface, ((void*)0));
error:
 kfree(dev);
 return retval;
}
