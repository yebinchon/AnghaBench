
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int ring; } ;


 int sca3000_rb_free (int ) ;

void sca3000_unconfigure_ring(struct iio_dev *indio_dev)
{
 sca3000_rb_free(indio_dev->ring);
}
