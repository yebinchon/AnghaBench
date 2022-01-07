
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct siginfo {int dummy; } ;
typedef scalar_t__ pid_t ;


 int ESRCH ;
 int check_kill_permission (int,struct siginfo*,struct task_struct*) ;
 int do_send_sig_info (int,struct siginfo*,struct task_struct*,int) ;
 struct task_struct* find_task_by_vpid (scalar_t__) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ task_tgid_vnr (struct task_struct*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int
do_send_specific(pid_t tgid, pid_t pid, int sig, struct siginfo *info)
{
 struct task_struct *p;
 int error = -ESRCH;

 rcu_read_lock();
 p = find_task_by_vpid(pid);
 if (p && (tgid <= 0 || task_tgid_vnr(p) == tgid)) {
  error = check_kill_permission(sig, info, p);




  if (!error && sig) {
   error = do_send_sig_info(sig, info, p, 0);





   if (unlikely(error == -ESRCH))
    error = 0;
  }
 }
 rcu_read_unlock();

 return error;
}
