
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dev; } ;
struct usb_device_id {int dummy; } ;
struct cypress {int udev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_attr_port0 ;
 int dev_attr_port1 ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*) ;
 int device_create_file (int *,int *) ;
 int device_remove_file (int *,int *) ;
 int interface_to_usbdev (struct usb_interface*) ;
 int kfree (struct cypress*) ;
 struct cypress* kzalloc (int,int ) ;
 int usb_get_dev (int ) ;
 int usb_put_dev (int ) ;
 int usb_set_intfdata (struct usb_interface*,struct cypress*) ;

__attribute__((used)) static int cypress_probe(struct usb_interface *interface,
    const struct usb_device_id *id)
{
 struct cypress *dev = ((void*)0);
 int retval = -ENOMEM;


 dev = kzalloc(sizeof(*dev), GFP_KERNEL);
 if (dev == ((void*)0)) {
  dev_err(&interface->dev, "Out of memory!\n");
  goto error_mem;
 }

 dev->udev = usb_get_dev(interface_to_usbdev(interface));


 usb_set_intfdata(interface, dev);


 retval = device_create_file(&interface->dev, &dev_attr_port0);
 if (retval)
  goto error;
 retval = device_create_file(&interface->dev, &dev_attr_port1);
 if (retval)
  goto error;


 dev_info(&interface->dev,
   "Cypress CY7C63xxx device now attached\n");
 return 0;

error:
 device_remove_file(&interface->dev, &dev_attr_port0);
 device_remove_file(&interface->dev, &dev_attr_port1);
 usb_set_intfdata(interface, ((void*)0));
 usb_put_dev(dev->udev);
 kfree(dev);

error_mem:
 return retval;
}
