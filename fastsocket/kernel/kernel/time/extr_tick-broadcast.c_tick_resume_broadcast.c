
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clock_event_device {int dummy; } ;
struct TYPE_2__ {int mode; struct clock_event_device* evtdev; } ;


 int CLOCK_EVT_MODE_RESUME ;


 int clockevents_set_mode (struct clock_event_device*,int ) ;
 int cpumask_empty (int ) ;
 int cpumask_test_cpu (int ,int ) ;
 int smp_processor_id () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 TYPE_1__ tick_broadcast_device ;
 int tick_broadcast_lock ;
 int tick_broadcast_start_periodic (struct clock_event_device*) ;
 int tick_get_broadcast_mask () ;
 int tick_resume_broadcast_oneshot (struct clock_event_device*) ;

int tick_resume_broadcast(void)
{
 struct clock_event_device *bc;
 unsigned long flags;
 int broadcast = 0;

 spin_lock_irqsave(&tick_broadcast_lock, flags);

 bc = tick_broadcast_device.evtdev;

 if (bc) {
  clockevents_set_mode(bc, CLOCK_EVT_MODE_RESUME);

  switch (tick_broadcast_device.mode) {
  case 128:
   if (!cpumask_empty(tick_get_broadcast_mask()))
    tick_broadcast_start_periodic(bc);
   broadcast = cpumask_test_cpu(smp_processor_id(),
           tick_get_broadcast_mask());
   break;
  case 129:
   broadcast = tick_resume_broadcast_oneshot(bc);
   break;
  }
 }
 spin_unlock_irqrestore(&tick_broadcast_lock, flags);

 return broadcast;
}
