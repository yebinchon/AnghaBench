
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clock_event_device {int dummy; } ;
struct TYPE_2__ {struct clock_event_device* evtdev; } ;


 int clockevents_shutdown (struct clock_event_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 TYPE_1__ tick_broadcast_device ;
 int tick_broadcast_lock ;

void tick_suspend_broadcast(void)
{
 struct clock_event_device *bc;
 unsigned long flags;

 spin_lock_irqsave(&tick_broadcast_lock, flags);

 bc = tick_broadcast_device.evtdev;
 if (bc)
  clockevents_shutdown(bc);

 spin_unlock_irqrestore(&tick_broadcast_lock, flags);
}
