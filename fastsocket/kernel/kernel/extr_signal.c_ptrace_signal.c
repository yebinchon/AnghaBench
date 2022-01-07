
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct TYPE_8__ {int si_signo; int si_uid; int si_pid; int si_code; scalar_t__ si_errno; } ;
typedef TYPE_1__ siginfo_t ;
struct TYPE_9__ {int exit_code; int blocked; int parent; } ;


 int PT_PTRACED ;
 int SI_USER ;
 TYPE_2__* current ;
 int ptrace_signal_deliver (struct pt_regs*,void*) ;
 int ptrace_stop (int,int ,TYPE_1__*) ;
 scalar_t__ sigismember (int *,int) ;
 int specific_send_sig_info (int,TYPE_1__*,TYPE_2__*) ;
 int task_pid_vnr (int ) ;
 int task_ptrace (TYPE_2__*) ;
 int task_uid (int ) ;

__attribute__((used)) static int ptrace_signal(int signr, siginfo_t *info,
    struct pt_regs *regs, void *cookie)
{
 if (!(task_ptrace(current) & PT_PTRACED))
  return signr;

 ptrace_signal_deliver(regs, cookie);


 ptrace_stop(signr, 0, info);


 signr = current->exit_code;
 if (signr == 0)
  return signr;

 current->exit_code = 0;





 if (signr != info->si_signo) {
  info->si_signo = signr;
  info->si_errno = 0;
  info->si_code = SI_USER;
  info->si_pid = task_pid_vnr(current->parent);
  info->si_uid = task_uid(current->parent);
 }


 if (sigismember(&current->blocked, signr)) {
  specific_send_sig_info(signr, info, current);
  signr = 0;
 }

 return signr;
}
