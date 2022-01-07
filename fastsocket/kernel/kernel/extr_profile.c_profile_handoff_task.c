
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int NOTIFY_OK ;
 int atomic_notifier_call_chain (int *,int ,struct task_struct*) ;
 int task_free_notifier ;

int profile_handoff_task(struct task_struct *task)
{
 int ret;
 ret = atomic_notifier_call_chain(&task_free_notifier, 0, task);
 return (ret == NOTIFY_OK) ? 1 : 0;
}
