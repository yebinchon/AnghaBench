
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bpd; } ;
struct iio_sw_ring_buffer {TYPE_1__ buf; } ;
struct iio_ring_buffer {int dummy; } ;


 struct iio_sw_ring_buffer* iio_to_sw_ring (struct iio_ring_buffer*) ;

int iio_get_bpd_sw_rb(struct iio_ring_buffer *r)
{
 struct iio_sw_ring_buffer *ring = iio_to_sw_ring(r);
 return ring->buf.bpd;
}
