
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int raw_lock; } ;
typedef TYPE_1__ spinlock_t ;


 int __raw_spin_unlock (int *) ;
 int debug_spin_unlock (TYPE_1__*) ;

void _raw_spin_unlock(spinlock_t *lock)
{
 debug_spin_unlock(lock);
 __raw_spin_unlock(&lock->raw_lock);
}
