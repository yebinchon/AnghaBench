
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_ring_buffer {int dummy; } ;


 int iio_read_last_from_sw_ring (int ,unsigned char*) ;
 int iio_to_sw_ring (struct iio_ring_buffer*) ;

int iio_read_last_from_sw_rb(struct iio_ring_buffer *r,
        unsigned char *data)
{
 return iio_read_last_from_sw_ring(iio_to_sw_ring(r), data);
}
