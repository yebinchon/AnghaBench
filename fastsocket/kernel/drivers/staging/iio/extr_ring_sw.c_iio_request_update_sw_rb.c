
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int length; int bpd; } ;
struct iio_sw_ring_buffer {int use_lock; TYPE_1__ buf; scalar_t__ use_count; int update_needed; } ;
struct iio_ring_buffer {int dummy; } ;


 int EAGAIN ;
 int __iio_free_sw_ring_buffer (struct iio_sw_ring_buffer*) ;
 int __iio_init_sw_ring_buffer (struct iio_sw_ring_buffer*,int ,int ) ;
 struct iio_sw_ring_buffer* iio_to_sw_ring (struct iio_ring_buffer*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int iio_request_update_sw_rb(struct iio_ring_buffer *r)
{
 int ret = 0;
 struct iio_sw_ring_buffer *ring = iio_to_sw_ring(r);

 spin_lock(&ring->use_lock);
 if (!ring->update_needed)
  goto error_ret;
 if (ring->use_count) {
  ret = -EAGAIN;
  goto error_ret;
 }
 __iio_free_sw_ring_buffer(ring);
 ret = __iio_init_sw_ring_buffer(ring, ring->buf.bpd, ring->buf.length);
error_ret:
 spin_unlock(&ring->use_lock);
 return ret;
}
