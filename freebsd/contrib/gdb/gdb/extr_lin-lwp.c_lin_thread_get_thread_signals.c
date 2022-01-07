
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {scalar_t__ sa_flags; int sa_mask; int sa_handler; } ;
typedef int sigset_t ;


 int SIG_BLOCK ;
 int blocked_mask ;
 int get_signo (char*) ;
 int sigaction (int,struct sigaction*,int *) ;
 int sigaddset (int *,int) ;
 int sigchld_handler ;
 int sigdelset (int *,int) ;
 int sigemptyset (int *) ;
 int sigprocmask (int ,int *,int *) ;
 int suspend_mask ;

void
lin_thread_get_thread_signals (sigset_t *set)
{
  struct sigaction action;
  int restart, cancel;

  sigemptyset (set);

  restart = get_signo ("__pthread_sig_restart");
  if (restart == 0)
    return;

  cancel = get_signo ("__pthread_sig_cancel");
  if (cancel == 0)
    return;

  sigaddset (set, restart);
  sigaddset (set, cancel);







  action.sa_handler = sigchld_handler;
  sigemptyset (&action.sa_mask);
  action.sa_flags = 0;
  sigaction (cancel, &action, ((void*)0));


  sigaddset (&blocked_mask, cancel);
  sigprocmask (SIG_BLOCK, &blocked_mask, ((void*)0));


  sigdelset (&suspend_mask, cancel);
}
