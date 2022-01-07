
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {TYPE_1__* pids; } ;
typedef enum pid_type { ____Placeholder_pid_type } pid_type ;
struct TYPE_2__ {int node; int pid; } ;


 int hlist_replace_rcu (int *,int *) ;

void transfer_pid(struct task_struct *old, struct task_struct *new,
      enum pid_type type)
{
 new->pids[type].pid = old->pids[type].pid;
 hlist_replace_rcu(&old->pids[type].node, &new->pids[type].node);
}
