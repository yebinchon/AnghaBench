
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dev; } ;
struct usb_cytherm {int udev; } ;


 int dev_attr_brightness ;
 int dev_attr_button ;
 int dev_attr_port0 ;
 int dev_attr_port1 ;
 int dev_attr_temp ;
 int dev_info (int *,char*) ;
 int device_remove_file (int *,int *) ;
 int kfree (struct usb_cytherm*) ;
 struct usb_cytherm* usb_get_intfdata (struct usb_interface*) ;
 int usb_put_dev (int ) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void cytherm_disconnect(struct usb_interface *interface)
{
 struct usb_cytherm *dev;

 dev = usb_get_intfdata (interface);

 device_remove_file(&interface->dev, &dev_attr_brightness);
 device_remove_file(&interface->dev, &dev_attr_temp);
 device_remove_file(&interface->dev, &dev_attr_button);
 device_remove_file(&interface->dev, &dev_attr_port0);
 device_remove_file(&interface->dev, &dev_attr_port1);


 usb_set_intfdata (interface, ((void*)0));

 usb_put_dev(dev->udev);

 kfree(dev);

 dev_info(&interface->dev, "Cypress thermometer now disconnected\n");
}
