
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct rt_mutex {int dummy; } ;
struct TYPE_2__ {struct task_struct* task; } ;


 int rt_mutex_has_waiters (struct rt_mutex*) ;
 TYPE_1__* rt_mutex_top_waiter (struct rt_mutex*) ;

struct task_struct *rt_mutex_next_owner(struct rt_mutex *lock)
{
 if (!rt_mutex_has_waiters(lock))
  return ((void*)0);

 return rt_mutex_top_waiter(lock)->task;
}
