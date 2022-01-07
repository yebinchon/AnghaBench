
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int ring; int pollfunc; } ;


 int iio_sw_rb_free (int ) ;
 int kfree (int ) ;

void lis3l02dq_unconfigure_ring(struct iio_dev *indio_dev)
{
 kfree(indio_dev->pollfunc);
 iio_sw_rb_free(indio_dev->ring);
}
