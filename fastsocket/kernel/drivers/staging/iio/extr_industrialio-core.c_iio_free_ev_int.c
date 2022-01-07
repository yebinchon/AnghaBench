
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_event_interface {int dev; } ;


 int device_unregister (int *) ;
 int put_device (int *) ;

void iio_free_ev_int(struct iio_event_interface *ev_int)
{
 device_unregister(&ev_int->dev);
 put_device(&ev_int->dev);
}
