
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct task_struct {int exit_code; int exit_signal; TYPE_4__* parent; TYPE_1__* signal; int stime; int utime; struct task_struct* group_leader; } ;
struct siginfo {int si_signo; int si_status; int si_code; void* si_stime; void* si_utime; int si_uid; int si_pid; scalar_t__ si_errno; } ;
struct sighand_struct {int siglock; TYPE_3__* action; } ;
struct TYPE_12__ {int uid; } ;
struct TYPE_11__ {struct sighand_struct* sighand; } ;
struct TYPE_9__ {scalar_t__ sa_handler; int sa_flags; } ;
struct TYPE_10__ {TYPE_2__ sa; } ;
struct TYPE_8__ {int stime; int utime; } ;


 int BUG_ON (int) ;
 int CLD_DUMPED ;
 int CLD_EXITED ;
 int CLD_KILLED ;
 int SA_NOCLDWAIT ;
 int SIGCHLD ;
 scalar_t__ SIG_IGN ;
 int __group_send_sig_info (int,struct siginfo*,TYPE_4__*) ;
 TYPE_6__* __task_cred (struct task_struct*) ;
 int __wake_up_parent (struct task_struct*,TYPE_4__*) ;
 int cputime_add (int ,int ) ;
 void* cputime_to_clock_t (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int task_active_pid_ns (TYPE_4__*) ;
 int task_is_stopped_or_traced (struct task_struct*) ;
 int task_pid_nr_ns (struct task_struct*,int ) ;
 int task_ptrace (struct task_struct*) ;
 int thread_group_empty (struct task_struct*) ;
 scalar_t__ valid_signal (int) ;

int do_notify_parent(struct task_struct *tsk, int sig)
{
 struct siginfo info;
 unsigned long flags;
 struct sighand_struct *psig;
 int ret = sig;

 BUG_ON(sig == -1);


  BUG_ON(task_is_stopped_or_traced(tsk));

 BUG_ON(!task_ptrace(tsk) &&
        (tsk->group_leader != tsk || !thread_group_empty(tsk)));

 info.si_signo = sig;
 info.si_errno = 0;
 rcu_read_lock();
 info.si_pid = task_pid_nr_ns(tsk, task_active_pid_ns(tsk->parent));
 info.si_uid = __task_cred(tsk)->uid;
 rcu_read_unlock();

 info.si_utime = cputime_to_clock_t(cputime_add(tsk->utime,
    tsk->signal->utime));
 info.si_stime = cputime_to_clock_t(cputime_add(tsk->stime,
    tsk->signal->stime));

 info.si_status = tsk->exit_code & 0x7f;
 if (tsk->exit_code & 0x80)
  info.si_code = CLD_DUMPED;
 else if (tsk->exit_code & 0x7f)
  info.si_code = CLD_KILLED;
 else {
  info.si_code = CLD_EXITED;
  info.si_status = tsk->exit_code >> 8;
 }

 psig = tsk->parent->sighand;
 spin_lock_irqsave(&psig->siglock, flags);
 if (!task_ptrace(tsk) && sig == SIGCHLD &&
     (psig->action[SIGCHLD-1].sa.sa_handler == SIG_IGN ||
      (psig->action[SIGCHLD-1].sa.sa_flags & SA_NOCLDWAIT))) {
  ret = tsk->exit_signal = -1;
  if (psig->action[SIGCHLD-1].sa.sa_handler == SIG_IGN)
   sig = -1;
 }
 if (valid_signal(sig) && sig > 0)
  __group_send_sig_info(sig, &info, tsk->parent);
 __wake_up_parent(tsk, tsk->parent);
 spin_unlock_irqrestore(&psig->siglock, flags);

 return ret;
}
