
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {scalar_t__ mode; int list; int cpumask; } ;


 int BUG_ON (int) ;
 scalar_t__ CLOCK_EVT_MODE_UNUSED ;
 int CLOCK_EVT_NOTIFY_ADD ;
 int clockevent_devices ;
 int clockevents_do_notify (int ,struct clock_event_device*) ;
 int clockevents_lock ;
 int clockevents_notify_released () ;
 int list_add (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void clockevents_register_device(struct clock_event_device *dev)
{
 unsigned long flags;

 BUG_ON(dev->mode != CLOCK_EVT_MODE_UNUSED);
 BUG_ON(!dev->cpumask);

 spin_lock_irqsave(&clockevents_lock, flags);

 list_add(&dev->list, &clockevent_devices);
 clockevents_do_notify(CLOCK_EVT_NOTIFY_ADD, dev);
 clockevents_notify_released();

 spin_unlock_irqrestore(&clockevents_lock, flags);
}
