
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_led {int udev; } ;
struct usb_interface {int dev; } ;
struct usb_device_id {int dummy; } ;
struct usb_device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_attr_blue ;
 int dev_attr_green ;
 int dev_attr_red ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*) ;
 int device_create_file (int *,int *) ;
 int device_remove_file (int *,int *) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int kfree (struct usb_led*) ;
 struct usb_led* kzalloc (int,int ) ;
 int usb_get_dev (struct usb_device*) ;
 int usb_put_dev (int ) ;
 int usb_set_intfdata (struct usb_interface*,struct usb_led*) ;

__attribute__((used)) static int led_probe(struct usb_interface *interface, const struct usb_device_id *id)
{
 struct usb_device *udev = interface_to_usbdev(interface);
 struct usb_led *dev = ((void*)0);
 int retval = -ENOMEM;

 dev = kzalloc(sizeof(struct usb_led), GFP_KERNEL);
 if (dev == ((void*)0)) {
  dev_err(&interface->dev, "Out of memory\n");
  goto error_mem;
 }

 dev->udev = usb_get_dev(udev);

 usb_set_intfdata (interface, dev);

 retval = device_create_file(&interface->dev, &dev_attr_blue);
 if (retval)
  goto error;
 retval = device_create_file(&interface->dev, &dev_attr_red);
 if (retval)
  goto error;
 retval = device_create_file(&interface->dev, &dev_attr_green);
 if (retval)
  goto error;

 dev_info(&interface->dev, "USB LED device now attached\n");
 return 0;

error:
 device_remove_file(&interface->dev, &dev_attr_blue);
 device_remove_file(&interface->dev, &dev_attr_red);
 device_remove_file(&interface->dev, &dev_attr_green);
 usb_set_intfdata (interface, ((void*)0));
 usb_put_dev(dev->udev);
 kfree(dev);
error_mem:
 return retval;
}
