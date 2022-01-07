
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;


 int NSIG ;
 int linux_proc_pending_signals (int,int *,int *,int *) ;
 int sigdelset (int *,int) ;
 scalar_t__ sigisemptyset (int *) ;
 scalar_t__ sigismember (int *,int) ;

__attribute__((used)) static int
lin_lwp_has_pending (int pid, sigset_t *pending, sigset_t *flush_mask)
{
  sigset_t blocked, ignored;
  int i;

  linux_proc_pending_signals (pid, pending, &blocked, &ignored);

  if (!flush_mask)
    return 0;

  for (i = 1; i < NSIG; i++)
    if (sigismember (pending, i))
      if (!sigismember (flush_mask, i)
   || sigismember (&blocked, i)
   || sigismember (&ignored, i))
 sigdelset (pending, i);

  if (sigisemptyset (pending))
    return 0;

  return 1;
}
