
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int * event_interfaces; } ;
typedef int s64 ;


 int __iio_push_event (int *,int,int ,int *) ;

int iio_push_event(struct iio_dev *dev_info,
     int ev_line,
     int ev_code,
     s64 timestamp)
{
 return __iio_push_event(&dev_info->event_interfaces[ev_line],
    ev_code, timestamp, ((void*)0));
}
