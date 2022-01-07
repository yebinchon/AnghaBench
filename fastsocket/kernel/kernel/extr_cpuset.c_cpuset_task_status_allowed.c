
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int mems_allowed; int cpus_allowed; } ;
struct seq_file {int dummy; } ;


 int seq_cpumask (struct seq_file*,int *) ;
 int seq_cpumask_list (struct seq_file*,int *) ;
 int seq_nodemask (struct seq_file*,int *) ;
 int seq_nodemask_list (struct seq_file*,int *) ;
 int seq_printf (struct seq_file*,char*) ;

void cpuset_task_status_allowed(struct seq_file *m, struct task_struct *task)
{
 seq_printf(m, "Cpus_allowed:\t");
 seq_cpumask(m, &task->cpus_allowed);
 seq_printf(m, "\n");
 seq_printf(m, "Cpus_allowed_list:\t");
 seq_cpumask_list(m, &task->cpus_allowed);
 seq_printf(m, "\n");
 seq_printf(m, "Mems_allowed:\t");
 seq_nodemask(m, &task->mems_allowed);
 seq_printf(m, "\n");
 seq_printf(m, "Mems_allowed_list:\t");
 seq_nodemask_list(m, &task->mems_allowed);
 seq_printf(m, "\n");
}
