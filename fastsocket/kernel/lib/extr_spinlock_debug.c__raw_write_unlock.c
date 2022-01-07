
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int raw_lock; } ;
typedef TYPE_1__ rwlock_t ;


 int __raw_write_unlock (int *) ;
 int debug_write_unlock (TYPE_1__*) ;

void _raw_write_unlock(rwlock_t *lock)
{
 debug_write_unlock(lock);
 __raw_write_unlock(&lock->raw_lock);
}
