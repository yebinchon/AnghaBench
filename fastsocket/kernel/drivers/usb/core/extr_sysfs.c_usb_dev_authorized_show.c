
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int authorized; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,int) ;
 struct usb_device* to_usb_device (struct device*) ;

__attribute__((used)) static ssize_t usb_dev_authorized_show(struct device *dev,
           struct device_attribute *attr,
           char *buf)
{
 struct usb_device *usb_dev = to_usb_device(dev);
 return snprintf(buf, PAGE_SIZE, "%u\n", usb_dev->authorized);
}
