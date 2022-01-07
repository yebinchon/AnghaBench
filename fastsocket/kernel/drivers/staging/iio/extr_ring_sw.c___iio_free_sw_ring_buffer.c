
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_sw_ring_buffer {int data; } ;


 int kfree (int ) ;

__attribute__((used)) static inline void __iio_free_sw_ring_buffer(struct iio_sw_ring_buffer *ring)
{
 kfree(ring->data);
}
