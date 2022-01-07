
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
typedef int pid_t ;


 struct task_struct* ERR_PTR (int ) ;
 int ESRCH ;
 struct task_struct* find_task_by_vpid (int ) ;
 int get_task_struct (struct task_struct*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static struct task_struct *ptrace_get_task_struct(pid_t pid)
{
 struct task_struct *child;

 rcu_read_lock();
 child = find_task_by_vpid(pid);
 if (child)
  get_task_struct(child);
 rcu_read_unlock();

 if (!child)
  return ERR_PTR(-ESRCH);
 return child;
}
