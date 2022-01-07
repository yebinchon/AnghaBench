
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int authorized_default; } ;
struct usb_device {struct usb_bus* bus; } ;
struct usb_bus {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ENODEV ;
 int PAGE_SIZE ;
 struct usb_hcd* bus_to_hcd (struct usb_bus*) ;
 int snprintf (char*,int ,char*,int) ;
 struct usb_device* to_usb_device (struct device*) ;

__attribute__((used)) static ssize_t usb_host_authorized_default_show(struct device *dev,
      struct device_attribute *attr,
      char *buf)
{
 struct usb_device *rh_usb_dev = to_usb_device(dev);
 struct usb_bus *usb_bus = rh_usb_dev->bus;
 struct usb_hcd *usb_hcd;

 if (usb_bus == ((void*)0))
  return -ENODEV;
 usb_hcd = bus_to_hcd(usb_bus);
 return snprintf(buf, PAGE_SIZE, "%u\n", usb_hcd->authorized_default);
}
