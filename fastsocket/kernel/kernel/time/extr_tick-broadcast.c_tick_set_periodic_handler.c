
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int event_handler; } ;


 int tick_handle_periodic ;
 int tick_handle_periodic_broadcast ;

void tick_set_periodic_handler(struct clock_event_device *dev, int broadcast)
{
 if (!broadcast)
  dev->event_handler = tick_handle_periodic;
 else
  dev->event_handler = tick_handle_periodic_broadcast;
}
