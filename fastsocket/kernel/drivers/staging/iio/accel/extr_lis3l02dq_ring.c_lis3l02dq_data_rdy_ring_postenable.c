
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int pollfunc; scalar_t__ trig; } ;


 int iio_trigger_attach_poll_func (scalar_t__,int ) ;

__attribute__((used)) static int lis3l02dq_data_rdy_ring_postenable(struct iio_dev *indio_dev)
{
 return indio_dev->trig
  ? iio_trigger_attach_poll_func(indio_dev->trig,
            indio_dev->pollfunc)
  : 0;
}
