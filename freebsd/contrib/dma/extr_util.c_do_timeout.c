
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_handler; scalar_t__ sa_flags; int sa_mask; } ;


 int LOG_WARNING ;
 int SIGALRM ;
 int SIG_IGN ;
 int alarm (int) ;
 scalar_t__ sigaction (int ,struct sigaction*,int *) ;
 int sigalrm_handler ;
 int sigbuf ;
 int sigbuf_valid ;
 int sigemptyset (int *) ;
 int sigsetjmp (int ,int) ;
 int syslog (int ,char*) ;

int
do_timeout(int timeout, int dojmp)
{
 struct sigaction act;
 int ret = 0;

 sigemptyset(&act.sa_mask);
 act.sa_flags = 0;

 if (timeout) {
  act.sa_handler = sigalrm_handler;
  if (sigaction(SIGALRM, &act, ((void*)0)) != 0)
   syslog(LOG_WARNING, "can not set signal handler: %m");
  if (dojmp) {
   ret = sigsetjmp(sigbuf, 1);
   if (ret)
    goto disable;

   sigbuf_valid = 1;
  }

  alarm(timeout);
 } else {
disable:
  alarm(0);

  act.sa_handler = SIG_IGN;
  if (sigaction(SIGALRM, &act, ((void*)0)) != 0)
   syslog(LOG_WARNING, "can not remove signal handler: %m");
  sigbuf_valid = 0;
 }

 return (ret);
}
