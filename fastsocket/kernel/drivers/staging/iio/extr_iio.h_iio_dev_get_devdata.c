
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {void* dev_data; } ;



__attribute__((used)) static inline void *iio_dev_get_devdata(struct iio_dev *d)
{
 return d->dev_data;
}
