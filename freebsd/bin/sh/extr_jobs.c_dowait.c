
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_mask; scalar_t__ sa_flags; int sa_handler; } ;
struct rusage {int dummy; } ;
struct procstat {int pid; int status; } ;
struct job {int state; scalar_t__ nprocs; int changed; struct procstat* ps; scalar_t__ foreground; int remembered; scalar_t__ used; } ;
typedef int sigset_t ;
typedef int pid_t ;


 int DOWAIT_BLOCK ;
 int DOWAIT_SIG ;
 int DOWAIT_SIG_TRAP ;
 scalar_t__ ECHILD ;
 scalar_t__ EINTR ;
 int INTOFF ;
 int INTON ;
 void* JOBDONE ;
 void* JOBSTOPPED ;
 int SIGCHLD ;
 int SIGINT ;
 int SIGPIPE ;
 int SIG_BLOCK ;
 int SIG_SETMASK ;
 int TRACE (char*) ;
 int WCONTINUED ;
 int WCOREDUMP (int) ;
 scalar_t__ WIFCONTINUED (int) ;
 scalar_t__ WIFSIGNALED (int) ;
 scalar_t__ WIFSTOPPED (int) ;
 int WNOHANG ;
 int WTERMSIG (int) ;
 int WUNTRACED ;
 struct job* bgjob ;
 int deljob (struct job*) ;
 int dummy_handler ;
 scalar_t__ errno ;
 int flushout (int ) ;
 int freejob (struct job*) ;
 scalar_t__ iflag ;
 scalar_t__ int_pending () ;
 int issigchldtrapped () ;
 struct job* jobtab ;
 int njobs ;
 int out2 ;
 int out2c (char) ;
 int out2str (char const*) ;
 scalar_t__ pendingsig ;
 scalar_t__ pendingsig_waitcmd ;
 int rootshell ;
 int sigaction (int ,struct sigaction*,struct sigaction*) ;
 int sigemptyset (int *) ;
 int sigfillset (int *) ;
 int sigprocmask (int ,int *,int *) ;
 int sigsuspend (int *) ;
 char* strsignal (int) ;
 int wait3 (int*,int,struct rusage*) ;

__attribute__((used)) static pid_t
dowait(int mode, struct job *job)
{
 struct sigaction sa, osa;
 sigset_t mask, omask;
 pid_t pid;
 int status;
 struct procstat *sp;
 struct job *jp;
 struct job *thisjob;
 const char *sigstr;
 int done;
 int stopped;
 int sig;
 int coredump;
 int wflags;
 int restore_sigchld;

 TRACE(("dowait(%d, %p) called\n", mode, job));
 restore_sigchld = 0;
 if ((mode & DOWAIT_SIG) != 0) {
  sigfillset(&mask);
  sigprocmask(SIG_BLOCK, &mask, &omask);
  INTOFF;
  if (!issigchldtrapped()) {
   restore_sigchld = 1;
   sa.sa_handler = dummy_handler;
   sa.sa_flags = 0;
   sigemptyset(&sa.sa_mask);
   sigaction(SIGCHLD, &sa, &osa);
  }
 }
 do {





   wflags = 0;
  if ((mode & (DOWAIT_BLOCK | DOWAIT_SIG)) != DOWAIT_BLOCK)
   wflags |= WNOHANG;
  pid = wait3(&status, wflags, (struct rusage *)((void*)0));
  TRACE(("wait returns %d, status=%d\n", (int)pid, status));
  if (pid == 0 && (mode & DOWAIT_SIG) != 0) {
   pid = -1;
   if (((mode & DOWAIT_SIG_TRAP) != 0 ?
       pendingsig : pendingsig_waitcmd) != 0) {
    errno = EINTR;
    break;
   }
   sigsuspend(&omask);
   if (int_pending())
    break;
  }
 } while (pid == -1 && errno == EINTR);
 if (pid == -1 && errno == ECHILD && job != ((void*)0))
  job->state = JOBDONE;
 if ((mode & DOWAIT_SIG) != 0) {
  if (restore_sigchld)
   sigaction(SIGCHLD, &osa, ((void*)0));
  sigprocmask(SIG_SETMASK, &omask, ((void*)0));
  INTON;
 }
 if (pid <= 0)
  return pid;
 INTOFF;
 thisjob = ((void*)0);
 for (jp = jobtab ; jp < jobtab + njobs ; jp++) {
  if (jp->used && jp->nprocs > 0) {
   done = 1;
   stopped = 1;
   for (sp = jp->ps ; sp < jp->ps + jp->nprocs ; sp++) {
    if (sp->pid == -1)
     continue;
    if (sp->pid == pid && (sp->status == -1 ||
        WIFSTOPPED(sp->status))) {
     TRACE(("Changing status of proc %d from 0x%x to 0x%x\n",
         (int)pid, sp->status,
         status));
     if (WIFCONTINUED(status)) {
      sp->status = -1;
      jp->state = 0;
     } else
      sp->status = status;
     thisjob = jp;
    }
    if (sp->status == -1)
     stopped = 0;
    else if (WIFSTOPPED(sp->status))
     done = 0;
   }
   if (stopped) {
    int state = done? JOBDONE : JOBSTOPPED;
    if (jp->state != state) {
     TRACE(("Job %td: changing state from %d to %d\n", jp - jobtab + 1, jp->state, state));
     jp->state = state;
     if (jp != job) {
      if (done && !jp->remembered &&
          !iflag && jp != bgjob)
       freejob(jp);




     }
    }
   }
  }
 }
 INTON;
 if (!thisjob || thisjob->state == 0)
  ;
 else if ((!rootshell || !iflag || thisjob == job) &&
     thisjob->foreground && thisjob->state != JOBSTOPPED) {
  sig = 0;
  coredump = 0;
  for (sp = thisjob->ps; sp < thisjob->ps + thisjob->nprocs; sp++)
   if (WIFSIGNALED(sp->status)) {
    sig = WTERMSIG(sp->status);
    coredump = WCOREDUMP(sp->status);
   }
  if (sig > 0 && sig != SIGINT && sig != SIGPIPE) {
   sigstr = strsignal(sig);
   if (sigstr != ((void*)0))
    out2str(sigstr);
   else
    out2str("Unknown signal");
   if (coredump)
    out2str(" (core dumped)");
   out2c('\n');
   flushout(out2);
  }
 } else {
  TRACE(("Not printing status, rootshell=%d, job=%p\n", rootshell, job));
  thisjob->changed = 1;
 }
 return pid;
}
