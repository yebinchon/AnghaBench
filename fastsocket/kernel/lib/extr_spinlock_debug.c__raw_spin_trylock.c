
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int raw_lock; } ;
typedef TYPE_1__ spinlock_t ;


 int SPIN_BUG_ON (int,TYPE_1__*,char*) ;
 int __raw_spin_trylock (int *) ;
 int debug_spin_lock_after (TYPE_1__*) ;

int _raw_spin_trylock(spinlock_t *lock)
{
 int ret = __raw_spin_trylock(&lock->raw_lock);

 if (ret)
  debug_spin_lock_after(lock);




 SPIN_BUG_ON(!ret, lock, "trylock failure on UP");

 return ret;
}
