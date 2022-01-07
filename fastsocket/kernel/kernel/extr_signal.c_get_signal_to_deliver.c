
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct signal_struct {int flags; scalar_t__ group_stop_count; } ;
struct sighand_struct {int siglock; struct k_sigaction* action; } ;
struct pt_regs {int dummy; } ;
struct TYPE_11__ {scalar_t__ sa_handler; int sa_flags; } ;
struct k_sigaction {TYPE_1__ sa; } ;
struct TYPE_12__ {int si_signo; } ;
typedef TYPE_2__ siginfo_t ;
struct TYPE_13__ {int flags; int blocked; int group_leader; struct signal_struct* signal; struct sighand_struct* sighand; } ;


 int CLD_CONTINUED ;
 int CLD_STOPPED ;
 int PF_SIGNALED ;
 int SA_ONESHOT ;
 int SIGKILL ;
 int SIGNAL_CLD_MASK ;
 int SIGNAL_STOP_CONTINUED ;
 int SIGNAL_UNKILLABLE ;
 int SIGSTOP ;
 scalar_t__ SIG_DFL ;
 scalar_t__ SIG_IGN ;
 TYPE_3__* current ;
 int dequeue_signal (TYPE_3__*,int *,TYPE_2__*) ;
 int do_coredump (int ,int ,struct pt_regs*) ;
 int do_group_exit (int ) ;
 int do_notify_parent_cldstop (int ,int) ;
 int do_signal_stop (int ) ;
 scalar_t__ is_current_pgrp_orphaned () ;
 scalar_t__ likely (int ) ;
 int print_fatal_signal (struct pt_regs*,int ) ;
 scalar_t__ print_fatal_signals ;
 int ptrace_signal (int,TYPE_2__*,struct pt_regs*,void*) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 scalar_t__ sig_kernel_coredump (int) ;
 scalar_t__ sig_kernel_ignore (int) ;
 int sig_kernel_only (int) ;
 scalar_t__ sig_kernel_stop (int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int tasklist_lock ;
 int trace_signal_deliver (int,TYPE_2__*,struct k_sigaction*) ;
 int tracehook_get_signal (TYPE_3__*,struct pt_regs*,TYPE_2__*,struct k_sigaction*) ;
 int tracehook_notify_jctl (int,int) ;
 int try_to_freeze () ;
 scalar_t__ unlikely (int) ;

int get_signal_to_deliver(siginfo_t *info, struct k_sigaction *return_ka,
     struct pt_regs *regs, void *cookie)
{
 struct sighand_struct *sighand = current->sighand;
 struct signal_struct *signal = current->signal;
 int signr;

relock:






 try_to_freeze();

 spin_lock_irq(&sighand->siglock);





 if (unlikely(signal->flags & SIGNAL_CLD_MASK)) {
  int why = (signal->flags & SIGNAL_STOP_CONTINUED)
    ? CLD_CONTINUED : CLD_STOPPED;
  signal->flags &= ~SIGNAL_CLD_MASK;

  why = tracehook_notify_jctl(why, CLD_CONTINUED);
  spin_unlock_irq(&sighand->siglock);

  if (why) {
   read_lock(&tasklist_lock);
   do_notify_parent_cldstop(current->group_leader, why);
   read_unlock(&tasklist_lock);
  }
  goto relock;
 }

 for (;;) {
  struct k_sigaction *ka;





  signr = tracehook_get_signal(current, regs, info, return_ka);
  if (unlikely(signr < 0))
   goto relock;
  if (unlikely(signr != 0))
   ka = return_ka;
  else {
   if (unlikely(signal->group_stop_count > 0) &&
       do_signal_stop(0))
    goto relock;

   signr = dequeue_signal(current, &current->blocked,
            info);

   if (!signr)
    break;

   if (signr != SIGKILL) {
    signr = ptrace_signal(signr, info,
            regs, cookie);
    if (!signr)
     continue;
   }

   ka = &sighand->action[signr-1];
  }


  trace_signal_deliver(signr, info, ka);

  if (ka->sa.sa_handler == SIG_IGN)
   continue;
  if (ka->sa.sa_handler != SIG_DFL) {

   *return_ka = *ka;

   if (ka->sa.sa_flags & SA_ONESHOT)
    ka->sa.sa_handler = SIG_DFL;

   break;
  }




  if (sig_kernel_ignore(signr))
   continue;
  if (unlikely(signal->flags & SIGNAL_UNKILLABLE) &&
    !sig_kernel_only(signr))
   continue;

  if (sig_kernel_stop(signr)) {
   if (signr != SIGSTOP) {
    spin_unlock_irq(&sighand->siglock);



    if (is_current_pgrp_orphaned())
     goto relock;

    spin_lock_irq(&sighand->siglock);
   }

   if (likely(do_signal_stop(info->si_signo))) {

    goto relock;
   }





   continue;
  }

  spin_unlock_irq(&sighand->siglock);




  current->flags |= PF_SIGNALED;

  if (sig_kernel_coredump(signr)) {
   if (print_fatal_signals)
    print_fatal_signal(regs, info->si_signo);
   do_coredump(info->si_signo, info->si_signo, regs);
  }




  do_group_exit(info->si_signo);

 }
 spin_unlock_irq(&sighand->siglock);
 return signr;
}
