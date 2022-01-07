
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct usb_interface {struct device dev; } ;


 int dev_attr_active ;
 int dev_attr_bank ;
 int dev_attr_dump ;
 int dev_attr_model ;
 int dev_attr_name ;
 int dev_attr_raw ;
 int dev_attr_raw2 ;
 int dev_attr_tone ;
 int dev_attr_volume ;
 int device_remove_file (struct device*,int *) ;
 int variax_destruct (struct usb_interface*) ;
 int variax_remove_files (int ,int ,struct device*) ;

void variax_disconnect(struct usb_interface *interface)
{
 struct device *dev;

 if (interface == ((void*)0))
  return;
 dev = &interface->dev;

 if (dev != ((void*)0)) {

  variax_remove_files(0, 0, dev);
  device_remove_file(dev, &dev_attr_model);
  device_remove_file(dev, &dev_attr_volume);
  device_remove_file(dev, &dev_attr_tone);
  device_remove_file(dev, &dev_attr_name);
  device_remove_file(dev, &dev_attr_bank);
  device_remove_file(dev, &dev_attr_dump);
  device_remove_file(dev, &dev_attr_active);




 }

 variax_destruct(interface);
}
