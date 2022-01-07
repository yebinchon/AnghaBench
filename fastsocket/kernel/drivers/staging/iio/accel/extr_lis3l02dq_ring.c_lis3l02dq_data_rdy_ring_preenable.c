
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iio_dev {int scan_count; TYPE_2__* ring; scalar_t__ scan_timestamp; } ;
typedef int s64 ;
typedef int s16 ;
struct TYPE_3__ {int (* set_bpd ) (TYPE_2__*,size_t) ;} ;
struct TYPE_4__ {TYPE_1__ access; } ;


 int EINVAL ;
 int stub1 (TYPE_2__*,size_t) ;

__attribute__((used)) static int lis3l02dq_data_rdy_ring_preenable(struct iio_dev *indio_dev)
{
 size_t size;

 if (!(indio_dev->scan_count || indio_dev->scan_timestamp))
  return -EINVAL;

 if (indio_dev->ring->access.set_bpd) {
  if (indio_dev->scan_timestamp)
   if (indio_dev->scan_count)
    size = 2*sizeof(s64);
   else
    size = sizeof(s64);
  else
   size = indio_dev->scan_count*sizeof(s16);
  indio_dev->ring->access.set_bpd(indio_dev->ring, size);
 }

 return 0;
}
