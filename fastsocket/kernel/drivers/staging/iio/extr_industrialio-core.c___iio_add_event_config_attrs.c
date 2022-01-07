
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int kobj; } ;
struct iio_dev {TYPE_3__* event_attrs; TYPE_2__ dev; TYPE_1__* event_conf_attrs; } ;
struct attribute {int dummy; } ;
struct TYPE_6__ {int name; } ;
struct TYPE_4__ {struct attribute** attrs; } ;


 int sysfs_add_file_to_group (int *,struct attribute*,int ) ;
 int sysfs_remove_file_from_group (int *,struct attribute*,int ) ;

__attribute__((used)) static inline int __iio_add_event_config_attrs(struct iio_dev *dev_info, int i)
{
 int ret;

 struct attribute **attrp, **attrq;

 if (dev_info->event_conf_attrs && dev_info->event_conf_attrs[i].attrs) {
  attrp = dev_info->event_conf_attrs[i].attrs;
  while (*attrp) {
   ret = sysfs_add_file_to_group(&dev_info->dev.kobj,
             *attrp,
             dev_info
             ->event_attrs[i].name);
   if (ret)
    goto error_ret;
   attrp++;
  }
 }
 return 0;

error_ret:
 attrq = dev_info->event_conf_attrs[i].attrs;
 while (attrq != attrp) {
   sysfs_remove_file_from_group(&dev_info->dev.kobj,
          *attrq,
          dev_info->event_attrs[i].name);
  attrq++;
 }

 return ret;
}
