
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {void (* sa_handler ) (int) ;scalar_t__ sa_flags; int sa_mask; } ;
typedef int sigset_t ;


 scalar_t__ DEBUG (int ) ;
 int JOB ;
 int JobCondPassSig (int) ;
 void SIG_DFL (int) ;
 int SIG_SETMASK ;
 int debug_file ;
 int fprintf (int ,char*,int) ;
 int getpid () ;
 int kill (int ,int) ;
 int make_suspended ;
 int sigaction (int,struct sigaction*,int *) ;
 int sigdelset (int *,int) ;
 int sigemptyset (int *) ;
 int sigfillset (int *) ;
 int sigprocmask (int ,int *,int *) ;

__attribute__((used)) static void
JobPassSig_suspend(int signo)
{
    sigset_t nmask, omask;
    struct sigaction act;


    make_suspended = 1;


    JobCondPassSig(signo);







    sigfillset(&nmask);
    sigdelset(&nmask, signo);
    (void)sigprocmask(SIG_SETMASK, &nmask, &omask);

    act.sa_handler = SIG_DFL;
    sigemptyset(&act.sa_mask);
    act.sa_flags = 0;
    (void)sigaction(signo, &act, ((void*)0));

    if (DEBUG(JOB)) {
 (void)fprintf(debug_file,
         "JobPassSig passing signal %d to self.\n", signo);
    }

    (void)kill(getpid(), signo);
    act.sa_handler = JobPassSig_suspend;
    (void)sigaction(signo, &act, ((void*)0));
    (void)sigprocmask(SIG_SETMASK, &omask, ((void*)0));
}
