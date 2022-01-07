
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;


 int __sca3000_hw_ring_state_set (struct iio_dev*,int) ;

__attribute__((used)) static int sca3000_hw_ring_preenable(struct iio_dev *indio_dev)
{
 return __sca3000_hw_ring_state_set(indio_dev, 1);
}
