
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int id; int timestamp; } ;
struct iio_detected_event_list {TYPE_1__ ev; } ;
typedef int s64 ;



void __iio_change_event(struct iio_detected_event_list *ev,
   int ev_code,
   s64 timestamp)
{
 ev->ev.id = ev_code;
 ev->ev.timestamp = timestamp;
}
