
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct siginfo {int dummy; } ;
struct pid {int dummy; } ;


 int ESRCH ;
 int PIDTYPE_PID ;
 int group_send_sig_info (int,struct siginfo*,struct task_struct*) ;
 struct task_struct* pid_task (struct pid*,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ unlikely (int) ;

int kill_pid_info(int sig, struct siginfo *info, struct pid *pid)
{
 int error = -ESRCH;
 struct task_struct *p;

 rcu_read_lock();
retry:
 p = pid_task(pid, PIDTYPE_PID);
 if (p) {
  error = group_send_sig_info(sig, info, p);
  if (unlikely(error == -ESRCH))






   goto retry;
 }
 rcu_read_unlock();

 return error;
}
