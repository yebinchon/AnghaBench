
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int spinlock_t ;
struct TYPE_4__ {long long counter; } ;
typedef TYPE_1__ atomic64_t ;


 int * lock_addr (TYPE_1__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void atomic64_sub(long long a, atomic64_t *v)
{
 unsigned long flags;
 spinlock_t *lock = lock_addr(v);

 spin_lock_irqsave(lock, flags);
 v->counter -= a;
 spin_unlock_irqrestore(lock, flags);
}
