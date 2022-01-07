
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* mark_param_change ) (struct iio_ring_buffer*) ;} ;
struct iio_ring_buffer {int length; TYPE_1__ access; } ;


 int stub1 (struct iio_ring_buffer*) ;

int iio_set_length_sw_rb(struct iio_ring_buffer *r, int length)
{
 if (r->length != length) {
  r->length = length;
  if (r->access.mark_param_change)
   r->access.mark_param_change(r);
 }
 return 0;
}
