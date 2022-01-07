
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iio_dev {TYPE_2__* ring; int modes; } ;
struct TYPE_3__ {int * get_bpd; int * get_length; int * rip_lots; } ;
struct TYPE_4__ {TYPE_1__ access; } ;


 int ENOMEM ;
 int INDIO_RING_HARDWARE_BUFFER ;
 TYPE_2__* sca3000_rb_allocate (struct iio_dev*) ;
 int sca3000_ring_get_bpd ;
 int sca3000_ring_get_length ;
 int sca3000_rip_hw_rb ;

int sca3000_configure_ring(struct iio_dev *indio_dev)
{
 indio_dev->ring = sca3000_rb_allocate(indio_dev);
 if (indio_dev->ring == ((void*)0))
  return -ENOMEM;
 indio_dev->modes |= INDIO_RING_HARDWARE_BUFFER;

 indio_dev->ring->access.rip_lots = &sca3000_rip_hw_rb;
 indio_dev->ring->access.get_length = &sca3000_ring_get_length;
 indio_dev->ring->access.get_bpd = &sca3000_ring_get_bpd;

 return 0;
}
