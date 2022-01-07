
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clocksource {scalar_t__ (* enable ) (struct clocksource*) ;int (* disable ) (struct clocksource*) ;} ;
struct TYPE_2__ {int lock; struct clocksource* clock; } ;


 scalar_t__ stub1 (struct clocksource*) ;
 int stub2 (struct clocksource*) ;
 TYPE_1__ timekeeper ;
 int timekeeper_setup_internals (struct clocksource*) ;
 int timekeeping_forward_now () ;
 int timekeeping_update (int) ;
 int write_seqlock_irqsave (int *,unsigned long) ;
 int write_sequnlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int change_clocksource(void *data)
{
 struct clocksource *new, *old;
 unsigned long flags;

 new = (struct clocksource *) data;

 write_seqlock_irqsave(&timekeeper.lock, flags);

 timekeeping_forward_now();
 if (!new->enable || new->enable(new) == 0) {
  old = timekeeper.clock;
  timekeeper_setup_internals(new);
  if (old->disable)
   old->disable(old);
 }
 timekeeping_update(1);

 write_sequnlock_irqrestore(&timekeeper.lock, flags);

 return 0;
}
