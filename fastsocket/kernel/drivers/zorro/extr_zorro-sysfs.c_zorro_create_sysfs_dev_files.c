
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int kobj; } ;
struct zorro_dev {struct device dev; } ;


 int dev_attr_id ;
 int dev_attr_resource ;
 int dev_attr_serial ;
 int dev_attr_slotaddr ;
 int dev_attr_slotsize ;
 int dev_attr_type ;
 int device_create_file (struct device*,int *) ;
 int sysfs_create_bin_file (int *,int *) ;
 int zorro_config_attr ;

int zorro_create_sysfs_dev_files(struct zorro_dev *z)
{
 struct device *dev = &z->dev;
 int error;


 if ((error = device_create_file(dev, &dev_attr_id)) ||
     (error = device_create_file(dev, &dev_attr_type)) ||
     (error = device_create_file(dev, &dev_attr_serial)) ||
     (error = device_create_file(dev, &dev_attr_slotaddr)) ||
     (error = device_create_file(dev, &dev_attr_slotsize)) ||
     (error = device_create_file(dev, &dev_attr_resource)) ||
     (error = sysfs_create_bin_file(&dev->kobj, &zorro_config_attr)))
  return error;

 return 0;
}
