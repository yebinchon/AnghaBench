
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct iio_trigger {scalar_t__ control_attrs; TYPE_1__ dev; } ;


 int sysfs_create_group (int *,scalar_t__) ;

__attribute__((used)) static int iio_trigger_register_sysfs(struct iio_trigger *trig_info)
{
 int ret = 0;

 if (trig_info->control_attrs)
  ret = sysfs_create_group(&trig_info->dev.kobj,
      trig_info->control_attrs);

 return ret;
}
