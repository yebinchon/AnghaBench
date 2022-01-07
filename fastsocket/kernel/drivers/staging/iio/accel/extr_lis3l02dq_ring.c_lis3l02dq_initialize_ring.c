
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_ring_buffer {int dummy; } ;


 int iio_ring_buffer_register (struct iio_ring_buffer*) ;

int lis3l02dq_initialize_ring(struct iio_ring_buffer *ring)
{
 return iio_ring_buffer_register(ring);
}
