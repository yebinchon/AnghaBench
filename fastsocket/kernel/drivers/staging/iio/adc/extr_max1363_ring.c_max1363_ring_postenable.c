
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int pollfunc; int * trig; } ;


 int iio_trigger_attach_poll_func (int *,int ) ;

__attribute__((used)) static int max1363_ring_postenable(struct iio_dev *indio_dev)
{
 if (indio_dev->trig == ((void*)0))
  return 0;
 return iio_trigger_attach_poll_func(indio_dev->trig,
         indio_dev->pollfunc);
}
