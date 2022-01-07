
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct pid {int dummy; } ;
typedef enum pid_type { ____Placeholder_pid_type } pid_type ;


 int get_task_struct (struct task_struct*) ;
 struct task_struct* pid_task (struct pid*,int) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

struct task_struct *get_pid_task(struct pid *pid, enum pid_type type)
{
 struct task_struct *result;
 rcu_read_lock();
 result = pid_task(pid, type);
 if (result)
  get_task_struct(result);
 rcu_read_unlock();
 return result;
}
