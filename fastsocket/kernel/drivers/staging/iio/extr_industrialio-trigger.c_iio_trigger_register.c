
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_trigger {int dev; int list; scalar_t__ id; } ;


 int dev_set_name (int *,char*,unsigned long) ;
 int device_add (int *) ;
 int device_del (int *) ;
 int iio_trigger_list ;
 int iio_trigger_list_lock ;
 int iio_trigger_register_id (struct iio_trigger*) ;
 int iio_trigger_register_sysfs (struct iio_trigger*) ;
 int iio_trigger_unregister_id (struct iio_trigger*) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int iio_trigger_register(struct iio_trigger *trig_info)
{
 int ret;

 ret = iio_trigger_register_id(trig_info);
 if (ret)
  goto error_ret;

 dev_set_name(&trig_info->dev, "trigger%ld",
       (unsigned long) trig_info->id);

 ret = device_add(&trig_info->dev);
 if (ret)
  goto error_unregister_id;

 ret = iio_trigger_register_sysfs(trig_info);
 if (ret)
  goto error_device_del;


 mutex_lock(&iio_trigger_list_lock);
 list_add_tail(&trig_info->list, &iio_trigger_list);
 mutex_unlock(&iio_trigger_list_lock);

 return 0;

error_device_del:
 device_del(&trig_info->dev);
error_unregister_id:
 iio_trigger_unregister_id(trig_info);
error_ret:
 return ret;
}
