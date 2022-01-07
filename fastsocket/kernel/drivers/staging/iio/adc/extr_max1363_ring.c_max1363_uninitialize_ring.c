
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_ring_buffer {int dummy; } ;


 int iio_ring_buffer_unregister (struct iio_ring_buffer*) ;

void max1363_uninitialize_ring(struct iio_ring_buffer *ring)
{
 iio_ring_buffer_unregister(ring);
}
