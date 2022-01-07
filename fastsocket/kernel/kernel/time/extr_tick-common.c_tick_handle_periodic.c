
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {scalar_t__ mode; int next_event; } ;
typedef int ktime_t ;


 scalar_t__ CLOCK_EVT_MODE_ONESHOT ;
 int clockevents_program_event (struct clock_event_device*,int ,int ) ;
 int ktime_add (int ,int ) ;
 int ktime_get () ;
 int smp_processor_id () ;
 int tick_period ;
 int tick_periodic (int) ;
 scalar_t__ timekeeping_valid_for_hres () ;

void tick_handle_periodic(struct clock_event_device *dev)
{
 int cpu = smp_processor_id();
 ktime_t next;

 tick_periodic(cpu);

 if (dev->mode != CLOCK_EVT_MODE_ONESHOT)
  return;




 next = ktime_add(dev->next_event, tick_period);
 for (;;) {
  if (!clockevents_program_event(dev, next, ktime_get()))
   return;
  if (timekeeping_valid_for_hres())
   tick_periodic(cpu);
  next = ktime_add(next, tick_period);
 }
}
