
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int lock; } ;
struct TYPE_3__ {int length; int bpd; TYPE_2__ shared_ev_pointer; int ev_int; } ;
struct iio_sw_ring_buffer {unsigned char* write_p; unsigned char* data; unsigned char* half_p; unsigned char* last_written_p; unsigned char* read_p; TYPE_1__ buf; } ;
typedef int s64 ;


 int IIO_EVENT_CODE_RING_100_FULL ;
 int IIO_EVENT_CODE_RING_50_FULL ;
 int __iio_push_event (int *,int,int ,TYPE_2__*) ;
 int barrier () ;
 int iio_push_or_escallate_ring_event (TYPE_1__*,int ,int ) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;

int iio_store_to_sw_ring(struct iio_sw_ring_buffer *ring,
    unsigned char *data,
    s64 timestamp)
{
 int ret = 0;
 int code;
 unsigned char *temp_ptr, *change_test_ptr;


 if (unlikely(ring->write_p == 0)) {
  ring->write_p = ring->data;




  ring->half_p = ring->data - ring->buf.length*ring->buf.bpd/2;
 }

 memcpy(ring->write_p, data, ring->buf.bpd);
 barrier();




 ring->last_written_p = ring->write_p;
 barrier();



 temp_ptr = ring->write_p + ring->buf.bpd;

 if (temp_ptr == ring->data + ring->buf.length*ring->buf.bpd)
  temp_ptr = ring->data;





 ring->write_p = temp_ptr;

 if (ring->read_p == 0)
  ring->read_p = ring->data;






 else if (ring->write_p == ring->read_p) {
  change_test_ptr = ring->read_p;
  temp_ptr = change_test_ptr + ring->buf.bpd;
  if (temp_ptr
      == ring->data + ring->buf.length*ring->buf.bpd) {
   temp_ptr = ring->data;
  }



  if (change_test_ptr == ring->read_p)
   ring->read_p = temp_ptr;

  spin_lock(&ring->buf.shared_ev_pointer.lock);

  ret = iio_push_or_escallate_ring_event(&ring->buf,
             IIO_EVENT_CODE_RING_100_FULL,
             timestamp);
  spin_unlock(&ring->buf.shared_ev_pointer.lock);
  if (ret)
   goto error_ret;
 }




 ring->half_p += ring->buf.bpd;
 if (ring->half_p == ring->data + ring->buf.length*ring->buf.bpd)
  ring->half_p = ring->data;
 if (ring->half_p == ring->read_p) {
  spin_lock(&ring->buf.shared_ev_pointer.lock);
  code = IIO_EVENT_CODE_RING_50_FULL;
  ret = __iio_push_event(&ring->buf.ev_int,
           code,
           timestamp,
           &ring->buf.shared_ev_pointer);
  spin_unlock(&ring->buf.shared_ev_pointer.lock);
 }
error_ret:
 return ret;
}
