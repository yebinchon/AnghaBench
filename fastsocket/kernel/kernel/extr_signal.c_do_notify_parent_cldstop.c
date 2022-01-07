
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct task_struct {int exit_code; struct sighand_struct* sighand; TYPE_1__* signal; int stime; int utime; struct task_struct* real_parent; struct task_struct* group_leader; struct task_struct* parent; } ;
struct siginfo {int si_signo; int si_code; int si_status; void* si_stime; void* si_utime; int si_uid; int si_pid; scalar_t__ si_errno; } ;
struct sighand_struct {int siglock; TYPE_3__* action; } ;
struct TYPE_8__ {int uid; } ;
struct TYPE_6__ {scalar_t__ sa_handler; int sa_flags; } ;
struct TYPE_7__ {TYPE_2__ sa; } ;
struct TYPE_5__ {int group_exit_code; } ;


 int BUG () ;



 int SA_NOCLDSTOP ;
 int SIGCHLD ;
 int SIGCONT ;
 scalar_t__ SIG_IGN ;
 int __group_send_sig_info (int,struct siginfo*,struct task_struct*) ;
 TYPE_4__* __task_cred (struct task_struct*) ;
 int __wake_up_parent (struct task_struct*,struct task_struct*) ;
 void* cputime_to_clock_t (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int task_active_pid_ns (struct task_struct*) ;
 int task_pid_nr_ns (struct task_struct*,int ) ;
 scalar_t__ task_ptrace (struct task_struct*) ;

void do_notify_parent_cldstop(struct task_struct *tsk, int why)
{
 struct siginfo info;
 unsigned long flags;
 struct task_struct *parent;
 struct sighand_struct *sighand;

 if (task_ptrace(tsk))
  parent = tsk->parent;
 else {
  tsk = tsk->group_leader;
  parent = tsk->real_parent;
 }

 info.si_signo = SIGCHLD;
 info.si_errno = 0;



 rcu_read_lock();
 info.si_pid = task_pid_nr_ns(tsk, task_active_pid_ns(parent));
 info.si_uid = __task_cred(tsk)->uid;
 rcu_read_unlock();

 info.si_utime = cputime_to_clock_t(tsk->utime);
 info.si_stime = cputime_to_clock_t(tsk->stime);

  info.si_code = why;
  switch (why) {
  case 130:
   info.si_status = SIGCONT;
   break;
  case 129:
   info.si_status = tsk->signal->group_exit_code & 0x7f;
   break;
  case 128:
   info.si_status = tsk->exit_code & 0x7f;
   break;
  default:
   BUG();
  }

 sighand = parent->sighand;
 spin_lock_irqsave(&sighand->siglock, flags);
 if (sighand->action[SIGCHLD-1].sa.sa_handler != SIG_IGN &&
     !(sighand->action[SIGCHLD-1].sa.sa_flags & SA_NOCLDSTOP))
  __group_send_sig_info(SIGCHLD, &info, parent);



 __wake_up_parent(tsk, parent);
 spin_unlock_irqrestore(&sighand->siglock, flags);
}
