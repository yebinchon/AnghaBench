
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_ring_buffer {int shared_ev_pointer; int ev_int; } ;
typedef int s64 ;


 int __iio_push_event (int *,int,int ,int *) ;

int iio_push_ring_event(struct iio_ring_buffer *ring_buf,
         int event_code,
         s64 timestamp)
{
 return __iio_push_event(&ring_buf->ev_int,
          event_code,
          timestamp,
          &ring_buf->shared_ev_pointer);
}
