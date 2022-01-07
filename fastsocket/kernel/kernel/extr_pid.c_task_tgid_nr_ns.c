
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct pid_namespace {int dummy; } ;
typedef int pid_t ;


 int pid_nr_ns (int ,struct pid_namespace*) ;
 int task_tgid (struct task_struct*) ;

pid_t task_tgid_nr_ns(struct task_struct *tsk, struct pid_namespace *ns)
{
 return pid_nr_ns(task_tgid(tsk), ns);
}
