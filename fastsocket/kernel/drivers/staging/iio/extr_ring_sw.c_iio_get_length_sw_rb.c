
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_ring_buffer {int length; } ;



int iio_get_length_sw_rb(struct iio_ring_buffer *r)
{
 return r->length;
}
