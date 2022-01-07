
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_ring_buffer {int access_dev; int access_id; } ;


 int device_unregister (int *) ;
 int iio_free_idr_val (int *,int ) ;
 int iio_ring_access_idr ;

__attribute__((used)) static void __iio_free_ring_buffer_access_chrdev(struct iio_ring_buffer *buf)
{
 iio_free_idr_val(&iio_ring_access_idr, buf->access_id);
 device_unregister(&buf->access_dev);
}
