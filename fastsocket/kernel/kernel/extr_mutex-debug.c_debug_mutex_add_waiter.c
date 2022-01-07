
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread_info {TYPE_1__* task; } ;
struct mutex_waiter {int dummy; } ;
struct mutex {int wait_lock; } ;
struct TYPE_2__ {struct mutex_waiter* blocked_on; } ;


 int SMP_DEBUG_LOCKS_WARN_ON (int) ;
 int spin_is_locked (int *) ;

void debug_mutex_add_waiter(struct mutex *lock, struct mutex_waiter *waiter,
       struct thread_info *ti)
{
 SMP_DEBUG_LOCKS_WARN_ON(!spin_is_locked(&lock->wait_lock));


 ti->task->blocked_on = waiter;
}
