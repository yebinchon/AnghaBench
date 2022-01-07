
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {scalar_t__ minor; } ;
struct find_interface_arg {scalar_t__ drv; scalar_t__ minor; } ;
struct device {scalar_t__ driver; } ;


 int is_usb_interface (struct device*) ;
 struct usb_interface* to_usb_interface (struct device*) ;

__attribute__((used)) static int __find_interface(struct device *dev, void *data)
{
 struct find_interface_arg *arg = data;
 struct usb_interface *intf;

 if (!is_usb_interface(dev))
  return 0;

 if (dev->driver != arg->drv)
  return 0;
 intf = to_usb_interface(dev);
 return intf->minor == arg->minor;
}
