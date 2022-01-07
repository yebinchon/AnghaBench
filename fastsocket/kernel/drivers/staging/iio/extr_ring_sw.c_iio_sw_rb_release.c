
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_ring_buffer {int dummy; } ;
struct device {int dummy; } ;


 int iio_to_sw_ring (struct iio_ring_buffer*) ;
 int kfree (int ) ;
 struct iio_ring_buffer* to_iio_ring_buffer (struct device*) ;

__attribute__((used)) static void iio_sw_rb_release(struct device *dev)
{
 struct iio_ring_buffer *r = to_iio_ring_buffer(dev);
 kfree(iio_to_sw_ring(r));
}
