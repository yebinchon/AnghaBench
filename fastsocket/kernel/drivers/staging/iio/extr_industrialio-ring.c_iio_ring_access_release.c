
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int chrdev; } ;
struct iio_ring_buffer {TYPE_1__ access_handler; } ;
struct device {int devt; } ;


 int MINOR (int ) ;
 struct iio_ring_buffer* access_dev_to_iio_ring_buffer (struct device*) ;
 int cdev_del (int *) ;
 int iio_device_free_chrdev_minor (int ) ;

__attribute__((used)) static void iio_ring_access_release(struct device *dev)
{
 struct iio_ring_buffer *buf
  = access_dev_to_iio_ring_buffer(dev);
 cdev_del(&buf->access_handler.chrdev);
 iio_device_free_chrdev_minor(MINOR(dev->devt));
}
