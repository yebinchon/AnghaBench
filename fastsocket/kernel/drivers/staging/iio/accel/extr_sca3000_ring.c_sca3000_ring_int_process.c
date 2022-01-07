
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iio_ring_buffer {int dummy; } ;


 int IIO_EVENT_CODE_RING_50_FULL ;
 int IIO_EVENT_CODE_RING_75_FULL ;
 int SCA3000_INT_STATUS_HALF ;
 int SCA3000_INT_STATUS_THREE_QUARTERS ;
 int iio_push_or_escallate_ring_event (struct iio_ring_buffer*,int ,int ) ;
 int iio_push_ring_event (struct iio_ring_buffer*,int ,int ) ;

void sca3000_ring_int_process(u8 val, struct iio_ring_buffer *ring)
{
 if (val & SCA3000_INT_STATUS_THREE_QUARTERS)
  iio_push_or_escallate_ring_event(ring,
       IIO_EVENT_CODE_RING_75_FULL,
       0);
 else if (val & SCA3000_INT_STATUS_HALF)
  iio_push_ring_event(ring,
        IIO_EVENT_CODE_RING_50_FULL, 0);
}
