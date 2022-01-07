
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iio_dev {TYPE_2__* ring; } ;
struct TYPE_3__ {int (* set_length ) (TYPE_2__*,int) ;} ;
struct TYPE_4__ {TYPE_1__ access; } ;


 int stub1 (TYPE_2__*,int) ;

int lis3l02dq_set_ring_length(struct iio_dev *indio_dev, int length)
{

 if (indio_dev->ring->access.set_length)
  return indio_dev->ring->access.set_length(indio_dev->ring, 500);
 return 0;
}
