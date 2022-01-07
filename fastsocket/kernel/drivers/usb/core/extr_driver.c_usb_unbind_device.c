
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device_driver {int (* disconnect ) (int ) ;} ;
struct device {int driver; } ;


 int stub1 (int ) ;
 int to_usb_device (struct device*) ;
 struct usb_device_driver* to_usb_device_driver (int ) ;

__attribute__((used)) static int usb_unbind_device(struct device *dev)
{
 struct usb_device_driver *udriver = to_usb_device_driver(dev->driver);

 udriver->disconnect(to_usb_device(dev));
 return 0;
}
