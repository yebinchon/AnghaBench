
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct device {int * type; } ;




 int to_usb_device (struct device*) ;
 int to_usb_interface (struct device*) ;
 int usb_create_sysfs_dev_files (int ) ;
 int usb_create_sysfs_intf_files (int ) ;
 int usb_device_type ;
 int usb_if_device_type ;
 int usb_remove_sysfs_dev_files (int ) ;
 int usb_remove_sysfs_intf_files (int ) ;

__attribute__((used)) static int usb_bus_notify(struct notifier_block *nb, unsigned long action,
  void *data)
{
 struct device *dev = data;

 switch (action) {
 case 129:
  if (dev->type == &usb_device_type)
   (void) usb_create_sysfs_dev_files(to_usb_device(dev));
  else if (dev->type == &usb_if_device_type)
   (void) usb_create_sysfs_intf_files(
     to_usb_interface(dev));
  break;

 case 128:
  if (dev->type == &usb_device_type)
   usb_remove_sysfs_dev_files(to_usb_device(dev));
  else if (dev->type == &usb_if_device_type)
   usb_remove_sysfs_intf_files(to_usb_interface(dev));
  break;
 }
 return 0;
}
