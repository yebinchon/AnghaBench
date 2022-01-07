
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ magic; int raw_lock; } ;
typedef TYPE_1__ rwlock_t ;


 int RWLOCK_BUG_ON (int,TYPE_1__*,char*) ;
 scalar_t__ RWLOCK_MAGIC ;
 int __raw_read_unlock (int *) ;

void _raw_read_unlock(rwlock_t *lock)
{
 RWLOCK_BUG_ON(lock->magic != RWLOCK_MAGIC, lock, "bad magic");
 __raw_read_unlock(&lock->raw_lock);
}
