
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {TYPE_1__* ring; } ;
struct TYPE_2__ {int * postdisable; int * preenable; } ;


 int sca3000_hw_ring_postdisable ;
 int sca3000_hw_ring_preenable ;

void sca3000_register_ring_funcs(struct iio_dev *indio_dev)
{
 indio_dev->ring->preenable = &sca3000_hw_ring_preenable;
 indio_dev->ring->postdisable = &sca3000_hw_ring_postdisable;
}
