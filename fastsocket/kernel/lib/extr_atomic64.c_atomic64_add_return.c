
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

long long atomic64_add_return(long long a, atomic64_t *v)
{
 unsigned long flags;
 spinlock_t *lock = lock_addr(v);
 long long val;

 spin_lock_irqsave(lock, flags);
 val = v->counter += a;
 spin_unlock_irqrestore(lock, flags);
 return val;
}
