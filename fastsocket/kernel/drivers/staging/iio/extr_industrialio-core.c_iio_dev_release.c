
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct device {int dummy; } ;


 int iio_put () ;
 int kfree (struct iio_dev*) ;
 struct iio_dev* to_iio_dev (struct device*) ;

__attribute__((used)) static void iio_dev_release(struct device *device)
{
 struct iio_dev *dev = to_iio_dev(device);

 iio_put();
 kfree(dev);
}
