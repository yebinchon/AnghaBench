
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union node {int dummy; } node ;
struct procstat {int pid; int status; int cmd; } ;
struct job {scalar_t__ nprocs; scalar_t__ state; int foreground; struct procstat* ps; int remembered; scalar_t__ used; } ;
typedef int pid_t ;


 int FORK_BG ;
 int FORK_FG ;
 int FORK_NOJOB ;
 int INTOFF ;
 int INTON ;
 scalar_t__ JOBDONE ;
 int O_RDONLY ;
 int SIGINT ;
 int SIGQUIT ;
 int SIGTERM ;
 int SIGTSTP ;
 int SIGTTOU ;
 int TRACE (char*) ;
 int _PATH_DEVNULL ;
 int backgndpid ;
 struct job* bgjob ;
 int checkzombies () ;
 int clear_traps () ;
 int close (int ) ;
 int closescript () ;
 int commandtext (union node*) ;
 int errno ;
 int error (char*,char*,...) ;
 int fd0_redirected_p () ;
 int flushall () ;
 scalar_t__ forcelocal ;
 int fork () ;
 int freejob (struct job*) ;
 int getpid () ;
 int * handler ;
 scalar_t__ iflag ;
 int ignoresig (int ) ;
 scalar_t__ jobctl ;
 struct job* jobtab ;
 int main_handler ;
 scalar_t__ mflag ;
 int njobs ;
 int nullstr ;
 scalar_t__ open (int ,int ) ;
 int rootshell ;
 int setcurjob (struct job*) ;
 scalar_t__ setpgid (int,int) ;
 int setsignal (int ) ;
 char* strerror (int ) ;
 scalar_t__ tcsetpgrp (scalar_t__,int) ;
 scalar_t__ ttyfd ;

pid_t
forkshell(struct job *jp, union node *n, int mode)
{
 pid_t pid;
 pid_t pgrp;

 TRACE(("forkshell(%%%td, %p, %d) called\n", jp - jobtab, (void *)n,
     mode));
 INTOFF;
 if (mode == FORK_BG && (jp == ((void*)0) || jp->nprocs == 0))
  checkzombies();
 flushall();
 pid = fork();
 if (pid == -1) {
  TRACE(("Fork failed, errno=%d\n", errno));
  INTON;
  error("Cannot fork: %s", strerror(errno));
 }
 if (pid == 0) {
  struct job *p;
  int wasroot;
  int i;

  TRACE(("Child shell %d\n", (int)getpid()));
  wasroot = rootshell;
  rootshell = 0;
  handler = &main_handler;
  closescript();
  INTON;
  forcelocal = 0;
  clear_traps();
  if (mode == FORK_BG) {
   ignoresig(SIGINT);
   ignoresig(SIGQUIT);
   if ((jp == ((void*)0) || jp->nprocs == 0) &&
       ! fd0_redirected_p ()) {
    close(0);
    if (open(_PATH_DEVNULL, O_RDONLY) != 0)
     error("cannot open %s: %s",
         _PATH_DEVNULL, strerror(errno));
   }
  }

  INTOFF;
  for (i = njobs, p = jobtab ; --i >= 0 ; p++)
   if (p->used)
    freejob(p);
  INTON;
  if (wasroot && iflag) {
   setsignal(SIGINT);
   setsignal(SIGQUIT);
   setsignal(SIGTERM);
  }
  return pid;
 }
 if (rootshell && mode != FORK_NOJOB && mflag) {
  if (jp == ((void*)0) || jp->nprocs == 0)
   pgrp = pid;
  else
   pgrp = jp->ps[0].pid;
  setpgid(pid, pgrp);
 }
 if (mode == FORK_BG) {
  if (bgjob != ((void*)0) && bgjob->state == JOBDONE &&
      !bgjob->remembered && !iflag)
   freejob(bgjob);
  backgndpid = pid;
  bgjob = jp;
 }
 if (jp) {
  struct procstat *ps = &jp->ps[jp->nprocs++];
  ps->pid = pid;
  ps->status = -1;
  ps->cmd = nullstr;
  if (iflag && rootshell && n)
   ps->cmd = commandtext(n);
  jp->foreground = mode == FORK_FG;



 }
 INTON;
 TRACE(("In parent shell:  child = %d\n", (int)pid));
 return pid;
}
