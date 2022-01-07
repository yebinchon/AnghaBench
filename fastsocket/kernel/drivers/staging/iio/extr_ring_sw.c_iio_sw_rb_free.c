
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_ring_buffer {int dummy; } ;


 int iio_put_ring_buffer (struct iio_ring_buffer*) ;

void iio_sw_rb_free(struct iio_ring_buffer *r)
{
 if (r)
  iio_put_ring_buffer(r);
}
