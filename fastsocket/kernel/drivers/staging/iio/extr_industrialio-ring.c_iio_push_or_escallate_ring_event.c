
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ev_p; } ;
struct iio_ring_buffer {TYPE_1__ shared_ev_pointer; } ;
typedef int s64 ;


 int __iio_change_event (scalar_t__,int,int ) ;
 int iio_push_ring_event (struct iio_ring_buffer*,int,int ) ;

int iio_push_or_escallate_ring_event(struct iio_ring_buffer *ring_buf,
        int event_code,
        s64 timestamp)
{
 if (ring_buf->shared_ev_pointer.ev_p)
  __iio_change_event(ring_buf->shared_ev_pointer.ev_p,
       event_code,
       timestamp);
 else
  return iio_push_ring_event(ring_buf,
       event_code,
       timestamp);
 return 0;
}
