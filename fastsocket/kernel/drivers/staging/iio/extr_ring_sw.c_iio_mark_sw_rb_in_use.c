
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_sw_ring_buffer {int use_lock; int use_count; } ;
struct iio_ring_buffer {int dummy; } ;


 struct iio_sw_ring_buffer* iio_to_sw_ring (struct iio_ring_buffer*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void iio_mark_sw_rb_in_use(struct iio_ring_buffer *r)
{
 struct iio_sw_ring_buffer *ring = iio_to_sw_ring(r);
 spin_lock(&ring->use_lock);
 ring->use_count++;
 spin_unlock(&ring->use_lock);
}
