
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;


 int EXINT ;
 scalar_t__ SIGINT ;
 int SIG_DFL ;
 int SIG_SETMASK ;
 int STDERR_FILENO ;
 int _exit (scalar_t__) ;
 int exraise (int ) ;
 scalar_t__ getpid () ;
 scalar_t__ iflag ;
 scalar_t__ intpending ;
 int kill (scalar_t__,scalar_t__) ;
 scalar_t__ rootshell ;
 int sigemptyset (int *) ;
 int signal (scalar_t__,int ) ;
 int sigprocmask (int ,int *,int *) ;
 scalar_t__ tcgetpgrp (int ) ;
 int write (int ,char*,int) ;

void
onint(void)
{
 sigset_t sigs;

 intpending = 0;
 sigemptyset(&sigs);
 sigprocmask(SIG_SETMASK, &sigs, ((void*)0));
 if (rootshell && iflag)
  exraise(EXINT);
 else {
  signal(SIGINT, SIG_DFL);
  kill(getpid(), SIGINT);
  _exit(128 + SIGINT);
 }
}
