
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct task_struct {TYPE_3__* sighand; TYPE_2__* signal; int blocked; } ;
struct siginfo {int dummy; } ;
struct TYPE_4__ {scalar_t__ sa_handler; } ;
struct k_sigaction {TYPE_1__ sa; } ;
struct TYPE_6__ {int siglock; struct k_sigaction* action; } ;
struct TYPE_5__ {int flags; } ;


 int SIGNAL_UNKILLABLE ;
 scalar_t__ SIG_DFL ;
 scalar_t__ SIG_IGN ;
 int recalc_sigpending_and_wake (struct task_struct*) ;
 int sigdelset (int *,int) ;
 int sigismember (int *,int) ;
 int specific_send_sig_info (int,struct siginfo*,struct task_struct*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int
force_sig_info(int sig, struct siginfo *info, struct task_struct *t)
{
 unsigned long int flags;
 int ret, blocked, ignored;
 struct k_sigaction *action;

 spin_lock_irqsave(&t->sighand->siglock, flags);
 action = &t->sighand->action[sig-1];
 ignored = action->sa.sa_handler == SIG_IGN;
 blocked = sigismember(&t->blocked, sig);
 if (blocked || ignored) {
  action->sa.sa_handler = SIG_DFL;
  if (blocked) {
   sigdelset(&t->blocked, sig);
   recalc_sigpending_and_wake(t);
  }
 }
 if (action->sa.sa_handler == SIG_DFL)
  t->signal->flags &= ~SIGNAL_UNKILLABLE;
 ret = specific_send_sig_info(sig, info, t);
 spin_unlock_irqrestore(&t->sighand->siglock, flags);

 return ret;
}
