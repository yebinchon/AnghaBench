
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {scalar_t__ mode; int next_event; } ;
typedef int ktime_t ;


 scalar_t__ CLOCK_EVT_MODE_PERIODIC ;
 int clockevents_program_event (struct clock_event_device*,int ,int ) ;
 int ktime_add (int ,int ) ;
 int ktime_get () ;
 int tick_do_periodic_broadcast () ;
 int tick_period ;

__attribute__((used)) static void tick_handle_periodic_broadcast(struct clock_event_device *dev)
{
 ktime_t next;

 tick_do_periodic_broadcast();




 if (dev->mode == CLOCK_EVT_MODE_PERIODIC)
  return;
 for (next = dev->next_event; ;) {
  next = ktime_add(next, tick_period);

  if (!clockevents_program_event(dev, next, ktime_get()))
   return;
  tick_do_periodic_broadcast();
 }
}
