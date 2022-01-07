
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread_info {TYPE_1__* task; } ;
struct mutex_waiter {TYPE_1__* task; int list; } ;
struct mutex {int dummy; } ;
struct TYPE_2__ {struct mutex_waiter* blocked_on; } ;


 int DEBUG_LOCKS_WARN_ON (int) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;

void mutex_remove_waiter(struct mutex *lock, struct mutex_waiter *waiter,
    struct thread_info *ti)
{
 DEBUG_LOCKS_WARN_ON(list_empty(&waiter->list));
 DEBUG_LOCKS_WARN_ON(waiter->task != ti->task);
 DEBUG_LOCKS_WARN_ON(ti->task->blocked_on != waiter);
 ti->task->blocked_on = ((void*)0);

 list_del_init(&waiter->list);
 waiter->task = ((void*)0);
}
