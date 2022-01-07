
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_trigger {int id; } ;


 int idr_remove (int *,int ) ;
 int iio_trigger_idr ;
 int iio_trigger_idr_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void iio_trigger_unregister_id(struct iio_trigger *trig_info)
{
  spin_lock(&iio_trigger_idr_lock);
  idr_remove(&iio_trigger_idr, trig_info->id);
  spin_unlock(&iio_trigger_idr_lock);
}
