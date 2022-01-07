
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int utrace_flags; } ;
struct seq_file {int dummy; } ;


 int seq_printf (struct seq_file*,char*,int ) ;

void task_utrace_proc_status(struct seq_file *m, struct task_struct *p)
{
 seq_printf(m, "Utrace:\t%lx\n", p->utrace_flags);
}
