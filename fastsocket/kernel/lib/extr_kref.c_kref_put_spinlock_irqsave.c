
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kref {int refcount; } ;
typedef int spinlock_t ;


 int WARN_ON (int ) ;
 scalar_t__ atomic_add_unless (int *,int,int) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int local_irq_restore (unsigned long) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int kref_put_spinlock_irqsave(struct kref *kref,
  void (*release)(struct kref *kref),
  spinlock_t *lock)
{
 unsigned long flags;

 WARN_ON(release == ((void*)0));
 if (atomic_add_unless(&kref->refcount, -1, 1))
  return 0;
 spin_lock_irqsave(lock, flags);
 if (atomic_dec_and_test(&kref->refcount)) {
  release(kref);
  local_irq_restore(flags);
  return 1;
 }
 spin_unlock_irqrestore(lock, flags);
 return 0;
}
