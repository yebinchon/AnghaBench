
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_led {int udev; } ;
struct usb_interface {int dev; } ;


 int dev_attr_blue ;
 int dev_attr_green ;
 int dev_attr_red ;
 int dev_info (int *,char*) ;
 int device_remove_file (int *,int *) ;
 int kfree (struct usb_led*) ;
 struct usb_led* usb_get_intfdata (struct usb_interface*) ;
 int usb_put_dev (int ) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void led_disconnect(struct usb_interface *interface)
{
 struct usb_led *dev;

 dev = usb_get_intfdata (interface);

 device_remove_file(&interface->dev, &dev_attr_blue);
 device_remove_file(&interface->dev, &dev_attr_red);
 device_remove_file(&interface->dev, &dev_attr_green);


 usb_set_intfdata (interface, ((void*)0));

 usb_put_dev(dev->udev);

 kfree(dev);

 dev_info(&interface->dev, "USB LED now disconnected\n");
}
