
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dev; } ;


 int put_device (int *) ;

__attribute__((used)) static inline void iio_put_device(struct iio_dev *dev)
{
 if (dev)
  put_device(&dev->dev);
}
