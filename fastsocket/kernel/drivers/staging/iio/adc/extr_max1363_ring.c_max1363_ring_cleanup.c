
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int ring; int pollfunc; scalar_t__ trig; } ;


 int iio_put_trigger (scalar_t__) ;
 int iio_sw_rb_free (int ) ;
 int iio_trigger_dettach_poll_func (scalar_t__,int ) ;
 int kfree (int ) ;

void max1363_ring_cleanup(struct iio_dev *indio_dev)
{

 if (indio_dev->trig) {
  iio_put_trigger(indio_dev->trig);
  iio_trigger_dettach_poll_func(indio_dev->trig,
           indio_dev->pollfunc);
 }
 kfree(indio_dev->pollfunc);
 iio_sw_rb_free(indio_dev->ring);
}
