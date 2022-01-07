
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; int (* tmr_restart ) (int ) ;} ;


 unsigned long curr_ticks ;
 int lock ;
 unsigned long next_event_time ;
 int opened ;
 int sequencer_timer (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int ) ;
 unsigned long ticks_offs ;
 TYPE_1__* tmr ;
 unsigned long tmr2ticks (int ) ;
 int tmr_ctr ;
 int tmr_running ;

void sound_timer_interrupt(void)
{
 unsigned long flags;

 if (!opened)
  return;

 tmr->tmr_restart(tmr->dev);

 if (!tmr_running)
  return;

 spin_lock_irqsave(&lock,flags);
 tmr_ctr++;
 curr_ticks = ticks_offs + tmr2ticks(tmr_ctr);

 if (curr_ticks >= next_event_time)
 {
  next_event_time = (unsigned long) -1;
  sequencer_timer(0);
 }
 spin_unlock_irqrestore(&lock,flags);
}
