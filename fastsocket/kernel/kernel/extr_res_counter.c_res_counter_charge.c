
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct res_counter {int lock; struct res_counter* parent; } ;


 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int res_counter_charge_locked (struct res_counter*,unsigned long) ;
 int res_counter_uncharge_locked (struct res_counter*,unsigned long) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int res_counter_charge(struct res_counter *counter, unsigned long val,
   struct res_counter **limit_fail_at)
{
 int ret;
 unsigned long flags;
 struct res_counter *c, *u;

 *limit_fail_at = ((void*)0);
 local_irq_save(flags);
 for (c = counter; c != ((void*)0); c = c->parent) {
  spin_lock(&c->lock);
  ret = res_counter_charge_locked(c, val);
  spin_unlock(&c->lock);
  if (ret < 0) {
   *limit_fail_at = c;
   goto undo;
  }
 }
 ret = 0;
 goto done;
undo:
 for (u = counter; u != c; u = u->parent) {
  spin_lock(&u->lock);
  res_counter_uncharge_locked(u, val);
  spin_unlock(&u->lock);
 }
done:
 local_irq_restore(flags);
 return ret;
}
