
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_ring_buffer {int dev; } ;


 int put_device (int *) ;

__attribute__((used)) static inline void iio_put_ring_buffer(struct iio_ring_buffer *ring)
{
 put_device(&ring->dev);
}
