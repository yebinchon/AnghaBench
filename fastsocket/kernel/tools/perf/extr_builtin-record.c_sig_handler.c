
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGCHLD ;
 int child_finished ;
 int done ;
 int signr ;

__attribute__((used)) static void sig_handler(int sig)
{
 if (sig == SIGCHLD)
  child_finished = 1;

 done = 1;
 signr = sig;
}
