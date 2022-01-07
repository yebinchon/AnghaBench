
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bpd; } ;
struct iio_sw_ring_buffer {scalar_t__ data; scalar_t__ half_p; scalar_t__ last_written_p; scalar_t__ write_p; scalar_t__ read_p; TYPE_1__ buf; int use_lock; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int __SPIN_LOCK_UNLOCKED (int ) ;
 int __iio_init_ring_buffer (TYPE_1__*,int,int) ;
 scalar_t__ kmalloc (int,int ) ;

__attribute__((used)) static inline int __iio_init_sw_ring_buffer(struct iio_sw_ring_buffer *ring,
         int bytes_per_datum, int length)
{
 if ((length == 0) || (bytes_per_datum == 0))
  return -EINVAL;

 __iio_init_ring_buffer(&ring->buf, bytes_per_datum, length);
 ring->use_lock = __SPIN_LOCK_UNLOCKED((ring)->use_lock);
 ring->data = kmalloc(length*ring->buf.bpd, GFP_KERNEL);
 ring->read_p = 0;
 ring->write_p = 0;
 ring->last_written_p = 0;
 ring->half_p = 0;
 return ring->data ? 0 : -ENOMEM;
}
