
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct res_counter {int lock; struct res_counter* parent; } ;


 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int res_counter_uncharge_locked (struct res_counter*,unsigned long) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void res_counter_uncharge(struct res_counter *counter, unsigned long val)
{
 unsigned long flags;
 struct res_counter *c;

 local_irq_save(flags);
 for (c = counter; c != ((void*)0); c = c->parent) {
  spin_lock(&c->lock);
  res_counter_uncharge_locked(c, val);
  spin_unlock(&c->lock);
 }
 local_irq_restore(flags);
}
