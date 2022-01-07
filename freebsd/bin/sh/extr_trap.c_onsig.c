
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SET_PENDING_INT ;
 int SIGCHLD ;
 int SIGINT ;
 int SIGQUIT ;
 int* gotsig ;
 int ignore_sigchld ;
 int in_dotrap ;
 int onint () ;
 int pendingsig ;
 int pendingsig_waitcmd ;
 scalar_t__ suppressint ;
 char** trap ;

void
onsig(int signo)
{

 if (signo == SIGINT && trap[SIGINT] == ((void*)0)) {





  if (suppressint && !in_dotrap)
   SET_PENDING_INT;
  else
   onint();
  return;
 }


 if (signo == SIGINT || signo == SIGQUIT)
  pendingsig_waitcmd = signo;

 if (trap[signo] != ((void*)0) && trap[signo][0] != '\0' &&
     (signo != SIGCHLD || !ignore_sigchld)) {
  gotsig[signo] = 1;
  pendingsig = signo;
  pendingsig_waitcmd = signo;
 }
}
