
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_sw_ring_buffer {int update_needed; } ;
struct iio_ring_buffer {int dummy; } ;


 struct iio_sw_ring_buffer* iio_to_sw_ring (struct iio_ring_buffer*) ;

int iio_mark_update_needed_sw_rb(struct iio_ring_buffer *r)
{
 struct iio_sw_ring_buffer *ring = iio_to_sw_ring(r);
 ring->update_needed = 1;
 return 0;
}
