
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ curr_ticks ;
 int lock ;
 unsigned long next_event_time ;
 scalar_t__ prev_event_time ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ ticks_offs ;
 scalar_t__ tmr_ctr ;
 scalar_t__ tmr_offs ;

__attribute__((used)) static void
tmr_reset(void)
{
 unsigned long flags;

 spin_lock_irqsave(&lock,flags);
 tmr_offs = 0;
 ticks_offs = 0;
 tmr_ctr = 0;
 next_event_time = (unsigned long) -1;
 prev_event_time = 0;
 curr_ticks = 0;
 spin_unlock_irqrestore(&lock,flags);
}
