
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_device {TYPE_1__* bus; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int busnum; } ;


 int sprintf (char*,char*,int) ;
 struct usb_device* to_usb_device (struct device*) ;

__attribute__((used)) static ssize_t
show_busnum(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct usb_device *udev;

 udev = to_usb_device(dev);
 return sprintf(buf, "%d\n", udev->bus->busnum);
}
