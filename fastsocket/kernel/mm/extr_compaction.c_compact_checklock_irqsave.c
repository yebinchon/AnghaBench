
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct compact_control {int contended; int sync; } ;
typedef int spinlock_t ;


 int cond_resched () ;
 int current ;
 scalar_t__ fatal_signal_pending (int ) ;
 scalar_t__ need_resched () ;
 scalar_t__ spin_is_contended (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static bool compact_checklock_irqsave(spinlock_t *lock, unsigned long *flags,
          bool locked, struct compact_control *cc)
{
 if (need_resched() || spin_is_contended(lock)) {
  if (locked) {
   spin_unlock_irqrestore(lock, *flags);
   locked = 0;
  }


  if (!cc->sync) {
   cc->contended = 1;
   return 0;
  }

  cond_resched();
  if (fatal_signal_pending(current))
   return 0;
 }

 if (!locked)
  spin_lock_irqsave(lock, *flags);
 return 1;
}
