
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct pid_namespace {scalar_t__ reboot; } ;
struct TYPE_4__ {TYPE_1__* signal; } ;
struct TYPE_3__ {scalar_t__ group_exit_code; } ;


 int ECHILD ;
 int PIDTYPE_PID ;
 int SIGKILL ;
 int TIF_SIGPENDING ;
 int __WALL ;
 int acct_exit_ns (struct pid_namespace*) ;
 int clear_thread_flag (int ) ;
 TYPE_2__* current ;
 int find_vpid (int) ;
 int force_sig (int ,struct task_struct*) ;
 int next_pidmap (struct pid_namespace*,int) ;
 struct task_struct* pid_task (int ,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int sys_wait4 (int,int *,int ,int *) ;
 int tasklist_lock ;

void zap_pid_ns_processes(struct pid_namespace *pid_ns)
{
 int nr;
 int rc;
 struct task_struct *task;
 read_lock(&tasklist_lock);
 nr = next_pidmap(pid_ns, 1);
 while (nr > 0) {
  rcu_read_lock();






  task = pid_task(find_vpid(nr), PIDTYPE_PID);
  if (task)
   force_sig(SIGKILL, task);

  rcu_read_unlock();

  nr = next_pidmap(pid_ns, nr);
 }
 read_unlock(&tasklist_lock);

 do {
  clear_thread_flag(TIF_SIGPENDING);
  rc = sys_wait4(-1, ((void*)0), __WALL, ((void*)0));
 } while (rc != -ECHILD);

 if (pid_ns->reboot)
  current->signal->group_exit_code = pid_ns->reboot;

 acct_exit_ns(pid_ns);
 return;
}
