
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {struct pid_link* pids; } ;
struct pid_link {int node; struct pid* pid; } ;
struct pid {int * tasks; } ;
typedef enum pid_type { ____Placeholder_pid_type } pid_type ;


 int hlist_add_head_rcu (int *,int *) ;

void attach_pid(struct task_struct *task, enum pid_type type,
  struct pid *pid)
{
 struct pid_link *link;

 link = &task->pids[type];
 link->pid = pid;
 hlist_add_head_rcu(&link->node, &pid->tasks[type]);
}
