
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct usb_device {struct device dev; } ;


 int dev_bin_attr_descriptors ;
 int device_remove_bin_file (struct device*,int *) ;
 int remove_persist_attributes (struct device*) ;
 int remove_power_attributes (struct device*) ;

void usb_remove_sysfs_dev_files(struct usb_device *udev)
{
 struct device *dev = &udev->dev;

 remove_power_attributes(dev);
 remove_persist_attributes(dev);
 device_remove_bin_file(dev, &dev_bin_attr_descriptors);
}
