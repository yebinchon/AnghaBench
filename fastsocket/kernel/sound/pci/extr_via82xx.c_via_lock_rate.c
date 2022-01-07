
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct via_rate_lock {int rate; int used; int lock; } ;


 int EINVAL ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int via_lock_rate(struct via_rate_lock *rec, int rate)
{
 int changed = 0;

 spin_lock_irq(&rec->lock);
 if (rec->rate != rate) {
  if (rec->rate && rec->used > 1)
   changed = -EINVAL;
  else {
   rec->rate = rate;
   changed = 1;
  }
 }
 spin_unlock_irq(&rec->lock);
 return changed;
}
