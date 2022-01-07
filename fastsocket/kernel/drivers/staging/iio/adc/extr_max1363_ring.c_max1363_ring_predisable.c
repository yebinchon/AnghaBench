
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int pollfunc; scalar_t__ trig; } ;


 int iio_trigger_dettach_poll_func (scalar_t__,int ) ;

__attribute__((used)) static int max1363_ring_predisable(struct iio_dev *indio_dev)
{
 if (indio_dev->trig)
  return iio_trigger_dettach_poll_func(indio_dev->trig,
           indio_dev->pollfunc);
 else
  return 0;
}
