
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
typedef void pid_namespace ;


 void* get_pid_ns (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int task_active_pid_ns (struct task_struct*) ;

__attribute__((used)) static void *pidns_get(struct task_struct *task)
{
 struct pid_namespace *ns;

 rcu_read_lock();
 ns = get_pid_ns(task_active_pid_ns(task));
 rcu_read_unlock();

 return ns;
}
