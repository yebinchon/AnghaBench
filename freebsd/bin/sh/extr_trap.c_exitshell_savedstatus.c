
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jmploc {int loc; } ;
typedef int sigset_t ;


 int FORCEINTON ;
 int SIGSTOP ;
 int SIGTSTP ;
 int SIGTTIN ;
 int SIGTTOU ;
 int SIG_DFL ;
 int SIG_UNBLOCK ;
 int _exit (int) ;
 scalar_t__ evalskip ;
 int evalstring (char*,int ) ;
 int exiting ;
 int exiting_exitstatus ;
 int exitstatus ;
 int flushall () ;
 int getpid () ;
 struct jmploc* handler ;
 scalar_t__ in_dotrap ;
 int kill (int ,int) ;
 int last_trapsig ;
 int oexitstatus ;
 int setjmp (int ) ;
 int setjobctl (int ) ;
 int sigaddset (int *,int) ;
 int sigemptyset (int *) ;
 int signal (int,int ) ;
 int sigprocmask (int ,int *,int *) ;
 char** trap ;

void
exitshell_savedstatus(void)
{
 struct jmploc loc1, loc2;
 char *p;
 int sig = 0;
 sigset_t sigs;

 if (!exiting) {
  if (in_dotrap && last_trapsig) {
   sig = last_trapsig;
   exiting_exitstatus = sig + 128;
  } else
   exiting_exitstatus = oexitstatus;
 }
 exitstatus = oexitstatus = exiting_exitstatus;
 if (!setjmp(loc1.loc)) {
  handler = &loc1;
  if ((p = trap[0]) != ((void*)0) && *p != '\0') {




   evalskip = 0;
   trap[0] = ((void*)0);
   FORCEINTON;
   evalstring(p, 0);
  }
 }
 if (!setjmp(loc2.loc)) {
  handler = &loc2;
  FORCEINTON;
  flushall();



 }
 if (sig != 0 && sig != SIGSTOP && sig != SIGTSTP && sig != SIGTTIN &&
     sig != SIGTTOU) {
  signal(sig, SIG_DFL);
  sigemptyset(&sigs);
  sigaddset(&sigs, sig);
  sigprocmask(SIG_UNBLOCK, &sigs, ((void*)0));
  kill(getpid(), sig);

 }
 _exit(exiting_exitstatus);
}
