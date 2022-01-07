
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clock_event_device {scalar_t__ rating; int features; } ;
struct TYPE_2__ {struct clock_event_device* evtdev; } ;


 int CLOCK_EVT_FEAT_C3STOP ;
 int clockevents_exchange_device (int *,struct clock_event_device*) ;
 int cpumask_empty (int ) ;
 TYPE_1__ tick_broadcast_device ;
 int tick_broadcast_start_periodic (struct clock_event_device*) ;
 int tick_get_broadcast_mask () ;

int tick_check_broadcast_device(struct clock_event_device *dev)
{
 if ((tick_broadcast_device.evtdev &&
      tick_broadcast_device.evtdev->rating >= dev->rating) ||
      (dev->features & CLOCK_EVT_FEAT_C3STOP))
  return 0;

 clockevents_exchange_device(((void*)0), dev);
 tick_broadcast_device.evtdev = dev;
 if (!cpumask_empty(tick_get_broadcast_mask()))
  tick_broadcast_start_periodic(dev);
 return 1;
}
