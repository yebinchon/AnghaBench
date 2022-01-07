
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mutex_waiter {int list; struct mutex_waiter* magic; } ;
struct mutex {int wait_list; int wait_lock; } ;


 int DEBUG_LOCKS_WARN_ON (int) ;
 int SMP_DEBUG_LOCKS_WARN_ON (int) ;
 int list_empty (int *) ;
 int spin_is_locked (int *) ;

void debug_mutex_wake_waiter(struct mutex *lock, struct mutex_waiter *waiter)
{
 SMP_DEBUG_LOCKS_WARN_ON(!spin_is_locked(&lock->wait_lock));
 DEBUG_LOCKS_WARN_ON(list_empty(&lock->wait_list));
 DEBUG_LOCKS_WARN_ON(waiter->magic != waiter);
 DEBUG_LOCKS_WARN_ON(list_empty(&waiter->list));
}
