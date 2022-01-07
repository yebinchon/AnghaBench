
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dev; } ;
struct usb_device_id {int dummy; } ;
struct usb_device {int dummy; } ;
struct usb_cytherm {int brightness; int udev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_attr_brightness ;
 int dev_attr_button ;
 int dev_attr_port0 ;
 int dev_attr_port1 ;
 int dev_attr_temp ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*) ;
 int device_create_file (int *,int *) ;
 int device_remove_file (int *,int *) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int kfree (struct usb_cytherm*) ;
 struct usb_cytherm* kzalloc (int,int ) ;
 int usb_get_dev (struct usb_device*) ;
 int usb_put_dev (int ) ;
 int usb_set_intfdata (struct usb_interface*,struct usb_cytherm*) ;

__attribute__((used)) static int cytherm_probe(struct usb_interface *interface,
    const struct usb_device_id *id)
{
 struct usb_device *udev = interface_to_usbdev(interface);
 struct usb_cytherm *dev = ((void*)0);
 int retval = -ENOMEM;

 dev = kzalloc (sizeof(struct usb_cytherm), GFP_KERNEL);
 if (dev == ((void*)0)) {
  dev_err (&interface->dev, "Out of memory\n");
  goto error_mem;
 }

 dev->udev = usb_get_dev(udev);

 usb_set_intfdata (interface, dev);

 dev->brightness = 0xFF;

 retval = device_create_file(&interface->dev, &dev_attr_brightness);
 if (retval)
  goto error;
 retval = device_create_file(&interface->dev, &dev_attr_temp);
 if (retval)
  goto error;
 retval = device_create_file(&interface->dev, &dev_attr_button);
 if (retval)
  goto error;
 retval = device_create_file(&interface->dev, &dev_attr_port0);
 if (retval)
  goto error;
 retval = device_create_file(&interface->dev, &dev_attr_port1);
 if (retval)
  goto error;

 dev_info (&interface->dev,
    "Cypress thermometer device now attached\n");
 return 0;
error:
 device_remove_file(&interface->dev, &dev_attr_brightness);
 device_remove_file(&interface->dev, &dev_attr_temp);
 device_remove_file(&interface->dev, &dev_attr_button);
 device_remove_file(&interface->dev, &dev_attr_port0);
 device_remove_file(&interface->dev, &dev_attr_port1);
 usb_set_intfdata (interface, ((void*)0));
 usb_put_dev(dev->udev);
 kfree(dev);
error_mem:
 return retval;
}
