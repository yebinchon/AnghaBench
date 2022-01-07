
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EAGAIN ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IIO_DEV_MAX ;
 int idr_get_new (int *,int *,int*) ;
 scalar_t__ idr_pre_get (int *,int ) ;
 int iio_chrdev_idr ;
 int iio_idr_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;

int iio_device_get_chrdev_minor(void)
{
 int ret, val;

idr_again:
 if (unlikely(idr_pre_get(&iio_chrdev_idr, GFP_KERNEL) == 0))
  return -ENOMEM;
 spin_lock(&iio_idr_lock);
 ret = idr_get_new(&iio_chrdev_idr, ((void*)0), &val);
 spin_unlock(&iio_idr_lock);
 if (unlikely(ret == -EAGAIN))
  goto idr_again;
 else if (unlikely(ret))
  return ret;
 if (val > IIO_DEV_MAX)
  return -ENOMEM;
 return val;
}
