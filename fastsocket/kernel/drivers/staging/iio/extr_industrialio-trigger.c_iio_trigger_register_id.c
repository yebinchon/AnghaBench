
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_trigger {int id; } ;


 int EAGAIN ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_ID_MASK ;
 int idr_get_new (int *,int *,int*) ;
 scalar_t__ idr_pre_get (int *,int ) ;
 int iio_trigger_idr ;
 int iio_trigger_idr_lock ;
 scalar_t__ likely (int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int iio_trigger_register_id(struct iio_trigger *trig_info)
{
 int ret = 0;

idr_again:
 if (unlikely(idr_pre_get(&iio_trigger_idr, GFP_KERNEL) == 0))
  return -ENOMEM;

 spin_lock(&iio_trigger_idr_lock);
 ret = idr_get_new(&iio_trigger_idr, ((void*)0), &trig_info->id);
 spin_unlock(&iio_trigger_idr_lock);
 if (unlikely(ret == -EAGAIN))
  goto idr_again;
 else if (likely(!ret))
  trig_info->id = trig_info->id & MAX_ID_MASK;

 return ret;
}
