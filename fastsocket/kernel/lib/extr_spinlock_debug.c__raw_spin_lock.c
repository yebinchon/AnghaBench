
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int raw_lock; } ;
typedef TYPE_1__ spinlock_t ;


 int __raw_spin_trylock (int *) ;
 int __spin_lock_debug (TYPE_1__*) ;
 int debug_spin_lock_after (TYPE_1__*) ;
 int debug_spin_lock_before (TYPE_1__*) ;
 scalar_t__ unlikely (int) ;

void _raw_spin_lock(spinlock_t *lock)
{
 debug_spin_lock_before(lock);
 if (unlikely(!__raw_spin_trylock(&lock->raw_lock)))
  __spin_lock_debug(lock);
 debug_spin_lock_after(lock);
}
