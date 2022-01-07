
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iio_sw_ring_buffer {int dummy; } ;
struct iio_ring_buffer {int dummy; } ;
typedef int s64 ;


 int iio_store_to_sw_ring (struct iio_sw_ring_buffer*,int *,int ) ;
 struct iio_sw_ring_buffer* iio_to_sw_ring (struct iio_ring_buffer*) ;

int iio_store_to_sw_rb(struct iio_ring_buffer *r, u8 *data, s64 timestamp)
{
 struct iio_sw_ring_buffer *ring = iio_to_sw_ring(r);
 return iio_store_to_sw_ring(ring, data, timestamp);
}
