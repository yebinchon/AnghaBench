
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int features; } ;
typedef int ktime_t ;


 int CLOCK_EVT_FEAT_PERIODIC ;
 int CLOCK_EVT_MODE_ONESHOT ;
 int CLOCK_EVT_MODE_PERIODIC ;
 int clockevents_program_event (struct clock_event_device*,int ,int ) ;
 int clockevents_set_mode (struct clock_event_device*,int ) ;
 int ktime_add (int ,int ) ;
 int ktime_get () ;
 unsigned long read_seqbegin (int *) ;
 scalar_t__ read_seqretry (int *,unsigned long) ;
 int tick_broadcast_oneshot_active () ;
 int tick_device_is_functional (struct clock_event_device*) ;
 int tick_next_period ;
 int tick_period ;
 int tick_set_periodic_handler (struct clock_event_device*,int) ;
 int xtime_lock ;

void tick_setup_periodic(struct clock_event_device *dev, int broadcast)
{
 tick_set_periodic_handler(dev, broadcast);


 if (!tick_device_is_functional(dev))
  return;

 if ((dev->features & CLOCK_EVT_FEAT_PERIODIC) &&
     !tick_broadcast_oneshot_active()) {
  clockevents_set_mode(dev, CLOCK_EVT_MODE_PERIODIC);
 } else {
  unsigned long seq;
  ktime_t next;

  do {
   seq = read_seqbegin(&xtime_lock);
   next = tick_next_period;
  } while (read_seqretry(&xtime_lock, seq));

  clockevents_set_mode(dev, CLOCK_EVT_MODE_ONESHOT);

  for (;;) {
   if (!clockevents_program_event(dev, next, ktime_get()))
    return;
   next = ktime_add(next, tick_period);
  }
 }
}
