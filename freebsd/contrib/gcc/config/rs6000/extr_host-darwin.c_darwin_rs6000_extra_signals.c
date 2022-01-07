
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sigaction {int sa_flags; int sa_sigaction; int sa_mask; } ;
struct TYPE_3__ {scalar_t__ ss_flags; int ss_size; int ss_sp; } ;
typedef TYPE_1__ stack_t ;


 int SA_ONSTACK ;
 int SA_SIGINFO ;
 int SIGSEGV ;
 int SIGSTKSZ ;
 int fatal_error (char*) ;
 int segv_handler ;
 scalar_t__ sigaction (int ,struct sigaction*,int ) ;
 scalar_t__ sigaltstack (TYPE_1__*,int *) ;
 int sigemptyset (int *) ;
 int xmalloc (int ) ;

__attribute__((used)) static void
darwin_rs6000_extra_signals (void)
{
  struct sigaction sact;
  stack_t sigstk;

  sigstk.ss_sp = xmalloc (SIGSTKSZ);
  sigstk.ss_size = SIGSTKSZ;
  sigstk.ss_flags = 0;
  if (sigaltstack (&sigstk, ((void*)0)) < 0)
    fatal_error ("While setting up signal stack: %m");

  sigemptyset(&sact.sa_mask);
  sact.sa_flags = SA_ONSTACK | SA_SIGINFO;
  sact.sa_sigaction = segv_handler;
  if (sigaction (SIGSEGV, &sact, 0) < 0)
    fatal_error ("While setting up signal handler: %m");
}
