
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uid_t ;
typedef int u32 ;
struct task_struct {TYPE_1__* sighand; } ;
struct siginfo {int dummy; } ;
struct pid {int dummy; } ;
struct cred {scalar_t__ suid; scalar_t__ uid; } ;
struct TYPE_2__ {int siglock; } ;


 int EINVAL ;
 int EPERM ;
 int ESRCH ;
 int PIDTYPE_PID ;
 int __send_signal (int,struct siginfo*,struct task_struct*,int,int ) ;
 struct cred* __task_cred (struct task_struct*) ;
 struct task_struct* pid_task (struct pid*,int ) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int security_task_kill (struct task_struct*,struct siginfo*,int,int ) ;
 scalar_t__ si_fromuser (struct siginfo*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tasklist_lock ;
 int valid_signal (int) ;

int kill_pid_info_as_uid(int sig, struct siginfo *info, struct pid *pid,
        uid_t uid, uid_t euid, u32 secid)
{
 int ret = -EINVAL;
 struct task_struct *p;
 const struct cred *pcred;

 if (!valid_signal(sig))
  return ret;

 read_lock(&tasklist_lock);
 p = pid_task(pid, PIDTYPE_PID);
 if (!p) {
  ret = -ESRCH;
  goto out_unlock;
 }
 pcred = __task_cred(p);
 if (si_fromuser(info) &&
     euid != pcred->suid && euid != pcred->uid &&
     uid != pcred->suid && uid != pcred->uid) {
  ret = -EPERM;
  goto out_unlock;
 }
 ret = security_task_kill(p, info, sig, secid);
 if (ret)
  goto out_unlock;
 if (sig && p->sighand) {
  unsigned long flags;
  spin_lock_irqsave(&p->sighand->siglock, flags);
  ret = __send_signal(sig, info, p, 1, 0);
  spin_unlock_irqrestore(&p->sighand->siglock, flags);
 }
out_unlock:
 read_unlock(&tasklist_lock);
 return ret;
}
