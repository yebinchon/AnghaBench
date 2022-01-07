
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int __cgroup_freezing_or_frozen (struct task_struct*) ;
 int task_lock (struct task_struct*) ;
 int task_unlock (struct task_struct*) ;

int cgroup_freezing_or_frozen(struct task_struct *task)
{
 int result;
 task_lock(task);
 result = __cgroup_freezing_or_frozen(task);
 task_unlock(task);
 return result;
}
