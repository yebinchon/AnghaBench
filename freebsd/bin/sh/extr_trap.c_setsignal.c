
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_mask; scalar_t__ sa_flags; scalar_t__ sa_handler; } ;
typedef scalar_t__ sig_t ;






 int SIGTTIN ;

 scalar_t__ SIG_DFL ;
 scalar_t__ SIG_IGN ;


 char S_HARD_IGN ;

 char S_RESET ;
 int getsigaction (int,scalar_t__*) ;
 int iflag ;
 scalar_t__ mflag ;
 scalar_t__ onsig ;
 int rootshell ;
 int sigaction (int,struct sigaction*,int *) ;
 int sigemptyset (int *) ;
 char* sigmode ;
 char** trap ;

void
setsignal(int signo)
{
 int action;
 sig_t sigact = SIG_DFL;
 struct sigaction sa;
 char *t;

 if ((t = trap[signo]) == ((void*)0))
  action = 129;
 else if (*t != '\0')
  action = 130;
 else
  action = 128;
 if (action == 129) {
  switch (signo) {
  case 135:
   action = 130;
   break;
  case 134:
   action = 130;
   break;
  case 133:
   if (rootshell && iflag)
    action = 128;
   break;







  }
 }

 t = &sigmode[signo];
 if (*t == 0) {



  if (!getsigaction(signo, &sigact)) {





   return;
  }
  if (sigact == SIG_IGN) {
   if (mflag && (signo == 132 ||
        signo == SIGTTIN || signo == 131)) {
    *t = 128;
   } else
    *t = S_HARD_IGN;
  } else {
   *t = S_RESET;
  }
 }
 if (*t == S_HARD_IGN || *t == action)
  return;
 switch (action) {
  case 129: sigact = SIG_DFL; break;
  case 130: sigact = onsig; break;
  case 128: sigact = SIG_IGN; break;
 }
 *t = action;
 sa.sa_handler = sigact;
 sa.sa_flags = 0;
 sigemptyset(&sa.sa_mask);
 sigaction(signo, &sa, ((void*)0));
}
