
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct iio_trigger {scalar_t__ control_attrs; TYPE_1__ dev; } ;


 int sysfs_remove_group (int *,scalar_t__) ;

__attribute__((used)) static void iio_trigger_unregister_sysfs(struct iio_trigger *trig_info)
{
 if (trig_info->control_attrs)
  sysfs_remove_group(&trig_info->dev.kobj,
       trig_info->control_attrs);
}
