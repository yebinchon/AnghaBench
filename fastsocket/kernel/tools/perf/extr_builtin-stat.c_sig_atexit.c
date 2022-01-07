
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGTERM ;
 int SIG_DFL ;
 int child_pid ;
 int getpid () ;
 int kill (int,int) ;
 int signal (int,int ) ;
 int signr ;

__attribute__((used)) static void sig_atexit(void)
{
 if (child_pid != -1)
  kill(child_pid, SIGTERM);

 if (signr == -1)
  return;

 signal(signr, SIG_DFL);
 kill(getpid(), signr);
}
