
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bpd; } ;
struct iio_sw_ring_buffer {unsigned char* last_written_p; TYPE_1__ buf; } ;


 int EAGAIN ;
 int barrier () ;
 int iio_mark_sw_rb_in_use (TYPE_1__*) ;
 int iio_unmark_sw_rb_in_use (TYPE_1__*) ;
 int memcpy (unsigned char*,unsigned char*,int ) ;
 scalar_t__ unlikely (int) ;

int iio_read_last_from_sw_ring(struct iio_sw_ring_buffer *ring,
          unsigned char *data)
{
 unsigned char *last_written_p_copy;

 iio_mark_sw_rb_in_use(&ring->buf);
again:
 barrier();
 last_written_p_copy = ring->last_written_p;
 barrier();

 if (last_written_p_copy == 0)
  return -EAGAIN;
 memcpy(data, last_written_p_copy, ring->buf.bpd);

 if (unlikely(ring->last_written_p >= last_written_p_copy))
  goto again;

 iio_unmark_sw_rb_in_use(&ring->buf);
 return 0;
}
