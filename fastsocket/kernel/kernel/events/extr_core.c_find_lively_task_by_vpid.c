
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
typedef int pid_t ;


 int EACCES ;
 struct task_struct* ERR_PTR (int) ;
 int ESRCH ;
 int PTRACE_MODE_READ ;
 struct task_struct* current ;
 struct task_struct* find_task_by_vpid (int ) ;
 int get_task_struct (struct task_struct*) ;
 int ptrace_may_access (struct task_struct*,int ) ;
 int put_task_struct (struct task_struct*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static struct task_struct *
find_lively_task_by_vpid(pid_t vpid)
{
 struct task_struct *task;
 int err;

 rcu_read_lock();
 if (!vpid)
  task = current;
 else
  task = find_task_by_vpid(vpid);
 if (task)
  get_task_struct(task);
 rcu_read_unlock();

 if (!task)
  return ERR_PTR(-ESRCH);


 err = -EACCES;
 if (!ptrace_may_access(task, PTRACE_MODE_READ))
  goto errout;

 return task;
errout:
 put_task_struct(task);
 return ERR_PTR(err);

}
