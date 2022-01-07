
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int CHECK_RETURN (int ) ;
 int dev_attr_active ;
 int dev_attr_bank ;
 int dev_attr_dump ;
 int dev_attr_model ;
 int dev_attr_name ;
 int dev_attr_raw ;
 int dev_attr_raw2 ;
 int dev_attr_tone ;
 int dev_attr_volume ;
 int device_create_file (struct device*,int *) ;

__attribute__((used)) static int variax_create_files2(struct device *dev)
{
 int err;
 CHECK_RETURN(device_create_file(dev, &dev_attr_model));
 CHECK_RETURN(device_create_file(dev, &dev_attr_volume));
 CHECK_RETURN(device_create_file(dev, &dev_attr_tone));
 CHECK_RETURN(device_create_file(dev, &dev_attr_name));
 CHECK_RETURN(device_create_file(dev, &dev_attr_bank));
 CHECK_RETURN(device_create_file(dev, &dev_attr_dump));
 CHECK_RETURN(device_create_file(dev, &dev_attr_active));




 return 0;
}
