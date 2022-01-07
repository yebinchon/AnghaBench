
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ magic; scalar_t__ owner; int owner_cpu; } ;
typedef TYPE_1__ rwlock_t ;


 int RWLOCK_BUG_ON (int,TYPE_1__*,char*) ;
 scalar_t__ RWLOCK_MAGIC ;
 scalar_t__ SPINLOCK_OWNER_INIT ;
 scalar_t__ current ;
 int raw_smp_processor_id () ;

__attribute__((used)) static inline void debug_write_unlock(rwlock_t *lock)
{
 RWLOCK_BUG_ON(lock->magic != RWLOCK_MAGIC, lock, "bad magic");
 RWLOCK_BUG_ON(lock->owner != current, lock, "wrong owner");
 RWLOCK_BUG_ON(lock->owner_cpu != raw_smp_processor_id(),
       lock, "wrong CPU");
 lock->owner = SPINLOCK_OWNER_INIT;
 lock->owner_cpu = -1;
}
