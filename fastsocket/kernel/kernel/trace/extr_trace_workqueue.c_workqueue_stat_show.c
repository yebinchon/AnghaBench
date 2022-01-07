
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int comm; } ;
struct seq_file {int dummy; } ;
struct pid {int dummy; } ;
struct cpu_workqueue_stats {int executed; int inserted; int cpu; int pid; } ;


 int PIDTYPE_PID ;
 int atomic_read (int *) ;
 struct pid* find_get_pid (int ) ;
 struct task_struct* get_pid_task (struct pid*,int ) ;
 int put_pid (struct pid*) ;
 int put_task_struct (struct task_struct*) ;
 int seq_printf (struct seq_file*,char*,int ,int ,int ,int ) ;

__attribute__((used)) static int workqueue_stat_show(struct seq_file *s, void *p)
{
 struct cpu_workqueue_stats *cws = p;
 struct pid *pid;
 struct task_struct *tsk;

 pid = find_get_pid(cws->pid);
 if (pid) {
  tsk = get_pid_task(pid, PIDTYPE_PID);
  if (tsk) {
   seq_printf(s, "%3d %6d     %6u       %s\n", cws->cpu,
       atomic_read(&cws->inserted), cws->executed,
       tsk->comm);
   put_task_struct(tsk);
  }
  put_pid(pid);
 }

 return 0;
}
