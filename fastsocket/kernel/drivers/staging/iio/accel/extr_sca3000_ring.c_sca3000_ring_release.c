
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_ring_buffer {int dummy; } ;
struct device {int dummy; } ;


 int iio_to_hw_ring_buf (struct iio_ring_buffer*) ;
 int kfree (int ) ;
 struct iio_ring_buffer* to_iio_ring_buffer (struct device*) ;

__attribute__((used)) static void sca3000_ring_release(struct device *dev)
{
 struct iio_ring_buffer *r = to_iio_ring_buffer(dev);
 kfree(iio_to_hw_ring_buf(r));
}
