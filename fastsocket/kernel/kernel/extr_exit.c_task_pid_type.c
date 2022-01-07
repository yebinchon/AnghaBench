
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {TYPE_1__* pids; struct task_struct* group_leader; } ;
struct pid {int dummy; } ;
typedef enum pid_type { ____Placeholder_pid_type } pid_type ;
struct TYPE_2__ {struct pid* pid; } ;


 int PIDTYPE_PID ;

__attribute__((used)) static inline
struct pid *task_pid_type(struct task_struct *task, enum pid_type type)
{
 if (type != PIDTYPE_PID)
  task = task->group_leader;
 return task->pids[type].pid;
}
