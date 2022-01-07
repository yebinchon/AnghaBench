
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mutex_waiter {int list; } ;


 int DEBUG_LOCKS_WARN_ON (int) ;
 int MUTEX_DEBUG_FREE ;
 int list_empty (int *) ;
 int memset (struct mutex_waiter*,int ,int) ;

void debug_mutex_free_waiter(struct mutex_waiter *waiter)
{
 DEBUG_LOCKS_WARN_ON(!list_empty(&waiter->list));
 memset(waiter, MUTEX_DEBUG_FREE, sizeof(*waiter));
}
