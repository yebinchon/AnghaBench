
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_ring_buffer {int id; int dev; } ;


 int __iio_free_ring_buffer_access_chrdev (struct iio_ring_buffer*) ;
 int __iio_free_ring_buffer_event_chrdev (struct iio_ring_buffer*) ;
 int device_del (int *) ;
 int iio_free_idr_val (int *,int ) ;
 int iio_ring_idr ;

void iio_ring_buffer_unregister(struct iio_ring_buffer *ring)
{
 __iio_free_ring_buffer_access_chrdev(ring);
 __iio_free_ring_buffer_event_chrdev(ring);
 device_del(&ring->dev);
 iio_free_idr_val(&iio_ring_idr, ring->id);
}
