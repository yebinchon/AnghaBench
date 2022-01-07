
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int idr_remove (int *,int) ;
 int iio_chrdev_idr ;
 int iio_idr_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void iio_device_free_chrdev_minor(int val)
{
 spin_lock(&iio_idr_lock);
 idr_remove(&iio_chrdev_idr, val);
 spin_unlock(&iio_idr_lock);
}
