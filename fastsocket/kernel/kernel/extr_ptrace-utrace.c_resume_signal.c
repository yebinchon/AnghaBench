
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ptrace_context {int signr; TYPE_2__* siginfo; } ;
struct k_sigaction {int dummy; } ;
struct TYPE_7__ {int si_signo; int si_uid; int si_pid; int si_code; scalar_t__ si_errno; } ;
typedef TYPE_2__ siginfo_t ;
typedef enum utrace_signal_action { ____Placeholder_utrace_signal_action } utrace_signal_action ;
struct TYPE_8__ {TYPE_1__* sighand; int blocked; int parent; } ;
struct TYPE_6__ {int siglock; struct k_sigaction* action; } ;


 int SI_USER ;
 int UTRACE_SIGNAL_DELIVER ;
 int UTRACE_SIGNAL_IGN ;
 TYPE_4__* current ;
 int send_sig_info (int,TYPE_2__*,TYPE_4__*) ;
 scalar_t__ sigismember (int *,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int task_pid_vnr (int ) ;
 int task_uid (int ) ;

__attribute__((used)) static enum utrace_signal_action resume_signal(struct ptrace_context *ctx,
            struct k_sigaction *return_ka)
{
 siginfo_t *info = ctx->siginfo;
 int signr = ctx->signr;

 ctx->siginfo = ((void*)0);
 ctx->signr = 0;


 if (!signr)
  return UTRACE_SIGNAL_IGN;





 if (info->si_signo != signr) {
  info->si_signo = signr;
  info->si_errno = 0;
  info->si_code = SI_USER;
  info->si_pid = task_pid_vnr(current->parent);
  info->si_uid = task_uid(current->parent);
 }


 if (sigismember(&current->blocked, signr)) {
  send_sig_info(signr, info, current);
  return UTRACE_SIGNAL_IGN;
 }

 spin_lock_irq(&current->sighand->siglock);
 *return_ka = current->sighand->action[signr - 1];
 spin_unlock_irq(&current->sighand->siglock);

 return UTRACE_SIGNAL_DELIVER;
}
