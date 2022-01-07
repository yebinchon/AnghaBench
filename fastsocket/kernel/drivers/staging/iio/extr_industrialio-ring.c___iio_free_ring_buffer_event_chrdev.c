
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int id; } ;
struct iio_ring_buffer {TYPE_1__ ev_int; } ;


 int iio_free_ev_int (TYPE_1__*) ;
 int iio_free_idr_val (int *,int ) ;
 int iio_ring_event_idr ;

__attribute__((used)) static inline void
__iio_free_ring_buffer_event_chrdev(struct iio_ring_buffer *buf)
{
 iio_free_ev_int(&(buf->ev_int));
 iio_free_idr_val(&iio_ring_event_idr, buf->ev_int.id);
}
