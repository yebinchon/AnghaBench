
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {TYPE_1__* pids; struct task_struct* group_leader; } ;
struct pid {int dummy; } ;
typedef enum pid_type { ____Placeholder_pid_type } pid_type ;
struct TYPE_2__ {int pid; } ;


 int PIDTYPE_PID ;
 struct pid* get_pid (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

struct pid *get_task_pid(struct task_struct *task, enum pid_type type)
{
 struct pid *pid;
 rcu_read_lock();
 if (type != PIDTYPE_PID)
  task = task->group_leader;
 pid = get_pid(task->pids[type].pid);
 rcu_read_unlock();
 return pid;
}
