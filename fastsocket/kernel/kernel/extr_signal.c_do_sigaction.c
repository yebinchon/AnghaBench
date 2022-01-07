
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct task_struct {TYPE_3__* sighand; int pending; TYPE_2__* signal; } ;
struct TYPE_4__ {int sa_mask; } ;
struct k_sigaction {TYPE_1__ sa; } ;
typedef int sigset_t ;
struct TYPE_6__ {int siglock; struct k_sigaction* action; } ;
struct TYPE_5__ {int shared_pending; } ;


 int EINVAL ;
 int SIGKILL ;
 int SIGSTOP ;
 struct task_struct* current ;
 struct task_struct* next_thread (struct task_struct*) ;
 int rm_from_queue_full (int *,int *) ;
 int sig_handler (struct task_struct*,int) ;
 scalar_t__ sig_handler_ignored (int ,int) ;
 scalar_t__ sig_kernel_only (int) ;
 int sigaddset (int *,int) ;
 int sigdelsetmask (int *,int) ;
 int sigemptyset (int *) ;
 int sigmask (int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int valid_signal (int) ;

int do_sigaction(int sig, struct k_sigaction *act, struct k_sigaction *oact)
{
 struct task_struct *t = current;
 struct k_sigaction *k;
 sigset_t mask;

 if (!valid_signal(sig) || sig < 1 || (act && sig_kernel_only(sig)))
  return -EINVAL;

 k = &t->sighand->action[sig-1];

 spin_lock_irq(&current->sighand->siglock);
 if (oact)
  *oact = *k;

 if (act) {
  sigdelsetmask(&act->sa.sa_mask,
         sigmask(SIGKILL) | sigmask(SIGSTOP));
  *k = *act;
  if (sig_handler_ignored(sig_handler(t, sig), sig)) {
   sigemptyset(&mask);
   sigaddset(&mask, sig);
   rm_from_queue_full(&mask, &t->signal->shared_pending);
   do {
    rm_from_queue_full(&mask, &t->pending);
    t = next_thread(t);
   } while (t != current);
  }
 }

 spin_unlock_irq(&current->sighand->siglock);
 return 0;
}
