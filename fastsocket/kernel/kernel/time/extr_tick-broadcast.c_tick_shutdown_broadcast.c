
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clock_event_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ mode; struct clock_event_device* evtdev; } ;


 scalar_t__ TICKDEV_MODE_PERIODIC ;
 int clockevents_shutdown (struct clock_event_device*) ;
 int cpumask_clear_cpu (unsigned int,int ) ;
 scalar_t__ cpumask_empty (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 TYPE_1__ tick_broadcast_device ;
 int tick_broadcast_lock ;
 int tick_get_broadcast_mask () ;

void tick_shutdown_broadcast(unsigned int *cpup)
{
 struct clock_event_device *bc;
 unsigned long flags;
 unsigned int cpu = *cpup;

 spin_lock_irqsave(&tick_broadcast_lock, flags);

 bc = tick_broadcast_device.evtdev;
 cpumask_clear_cpu(cpu, tick_get_broadcast_mask());

 if (tick_broadcast_device.mode == TICKDEV_MODE_PERIODIC) {
  if (bc && cpumask_empty(tick_get_broadcast_mask()))
   clockevents_shutdown(bc);
 }

 spin_unlock_irqrestore(&tick_broadcast_lock, flags);
}
