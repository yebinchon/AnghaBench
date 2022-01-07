
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct iio_dev {TYPE_1__ dev; } ;


 int iio_trigger_consumer_attr_group ;
 int sysfs_create_group (int *,int *) ;

int iio_device_register_trigger_consumer(struct iio_dev *dev_info)
{
 int ret;
 ret = sysfs_create_group(&dev_info->dev.kobj,
     &iio_trigger_consumer_attr_group);
 return ret;
}
