
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int raw_lock; } ;
typedef TYPE_1__ rwlock_t ;


 int RWLOCK_BUG_ON (int,TYPE_1__*,char*) ;
 int __raw_read_trylock (int *) ;

int _raw_read_trylock(rwlock_t *lock)
{
 int ret = __raw_read_trylock(&lock->raw_lock);





 RWLOCK_BUG_ON(!ret, lock, "trylock failure on UP");

 return ret;
}
