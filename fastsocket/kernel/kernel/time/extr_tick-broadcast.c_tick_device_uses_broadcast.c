
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clock_event_device {int features; int event_handler; } ;
struct TYPE_2__ {int evtdev; } ;


 int CLOCK_EVT_FEAT_C3STOP ;
 int cpumask_clear_cpu (int,int ) ;
 int cpumask_set_cpu (int,int ) ;
 int smp_processor_id () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tick_broadcast_clear_oneshot (int) ;
 TYPE_1__ tick_broadcast_device ;
 int tick_broadcast_lock ;
 int tick_broadcast_start_periodic (int ) ;
 int tick_device_is_functional (struct clock_event_device*) ;
 int tick_get_broadcast_mask () ;
 int tick_handle_periodic ;

int tick_device_uses_broadcast(struct clock_event_device *dev, int cpu)
{
 unsigned long flags;
 int ret = 0;

 spin_lock_irqsave(&tick_broadcast_lock, flags);







 if (!tick_device_is_functional(dev)) {
  dev->event_handler = tick_handle_periodic;
  cpumask_set_cpu(cpu, tick_get_broadcast_mask());
  tick_broadcast_start_periodic(tick_broadcast_device.evtdev);
  ret = 1;
 } else {





  if (!(dev->features & CLOCK_EVT_FEAT_C3STOP)) {
   int cpu = smp_processor_id();

   cpumask_clear_cpu(cpu, tick_get_broadcast_mask());
   tick_broadcast_clear_oneshot(cpu);
  }
 }
 spin_unlock_irqrestore(&tick_broadcast_lock, flags);
 return ret;
}
