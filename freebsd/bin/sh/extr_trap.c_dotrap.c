
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stackmark {int dummy; } ;


 int NSIG ;
 int SIGCHLD ;
 int evalskip ;
 int evalstring (int ,int ) ;
 int exitstatus ;
 scalar_t__* gotsig ;
 int ignore_sigchld ;
 int in_dotrap ;
 int last_trapsig ;
 scalar_t__ pendingsig ;
 scalar_t__ pendingsig_waitcmd ;
 int popstackmark (struct stackmark*) ;
 int setstackmark (struct stackmark*) ;
 int skipcount ;
 int stsavestr (scalar_t__) ;
 scalar_t__* trap ;

void
dotrap(void)
{
 struct stackmark smark;
 int i;
 int savestatus, prev_evalskip, prev_skipcount;

 in_dotrap++;
 for (;;) {
  pendingsig = 0;
  pendingsig_waitcmd = 0;
  for (i = 1; i < NSIG; i++) {
   if (gotsig[i]) {
    gotsig[i] = 0;
    if (trap[i]) {





     if (i == SIGCHLD)
      ignore_sigchld++;
     prev_evalskip = evalskip;
     prev_skipcount = skipcount;
     evalskip = 0;

     last_trapsig = i;
     savestatus = exitstatus;
     setstackmark(&smark);
     evalstring(stsavestr(trap[i]), 0);
     popstackmark(&smark);
     if (evalskip == 0 ||
         prev_evalskip != 0) {
      evalskip = prev_evalskip;
      skipcount = prev_skipcount;
      exitstatus = savestatus;
     }

     if (i == SIGCHLD)
      ignore_sigchld--;
    }
    break;
   }
  }
  if (i >= NSIG)
   break;
 }
 in_dotrap--;
}
