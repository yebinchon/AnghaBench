
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int pi_blocked_on; int pi_waiters; } ;


 int WARN_ON (int) ;
 int plist_head_empty (int *) ;

void rt_mutex_debug_task_free(struct task_struct *task)
{
 WARN_ON(!plist_head_empty(&task->pi_waiters));
 WARN_ON(task->pi_blocked_on);
}
