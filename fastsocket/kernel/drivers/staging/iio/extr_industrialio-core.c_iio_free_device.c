
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;


 int iio_put_device (struct iio_dev*) ;

void iio_free_device(struct iio_dev *dev)
{
 if (dev)
  iio_put_device(dev);
}
