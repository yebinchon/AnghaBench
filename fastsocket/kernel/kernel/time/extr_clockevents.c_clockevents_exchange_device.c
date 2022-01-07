
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {scalar_t__ mode; int list; } ;


 int BUG_ON (int) ;
 scalar_t__ CLOCK_EVT_MODE_UNUSED ;
 int clockevents_released ;
 int clockevents_set_mode (struct clock_event_device*,scalar_t__) ;
 int clockevents_shutdown (struct clock_event_device*) ;
 int list_add (int *,int *) ;
 int list_del (int *) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

void clockevents_exchange_device(struct clock_event_device *old,
     struct clock_event_device *new)
{
 unsigned long flags;

 local_irq_save(flags);




 if (old) {
  clockevents_set_mode(old, CLOCK_EVT_MODE_UNUSED);
  list_del(&old->list);
  list_add(&old->list, &clockevents_released);
 }

 if (new) {
  BUG_ON(new->mode != CLOCK_EVT_MODE_UNUSED);
  clockevents_shutdown(new);
 }
 local_irq_restore(flags);
}
