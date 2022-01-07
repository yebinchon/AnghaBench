
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct max1363_state {TYPE_2__* current_mode; } ;
struct iio_dev {TYPE_3__* ring; struct max1363_state* dev_data; } ;
typedef int s64 ;
struct TYPE_4__ {int (* set_bpd ) (TYPE_3__*,size_t) ;} ;
struct TYPE_6__ {TYPE_1__ access; } ;
struct TYPE_5__ {int numvals; } ;


 int stub1 (TYPE_3__*,size_t) ;

__attribute__((used)) static int max1363_ring_preenable(struct iio_dev *indio_dev)
{
 struct max1363_state *st = indio_dev->dev_data;
 size_t d_size;

 if (indio_dev->ring->access.set_bpd) {
  d_size = st->current_mode->numvals*2 + sizeof(s64);
  if (d_size % 8)
   d_size += 8 - (d_size % 8);
  indio_dev->ring->access.set_bpd(indio_dev->ring, d_size);
 }

 return 0;
}
