
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct job {scalar_t__ state; scalar_t__ jobctl; scalar_t__ foreground; } ;


 int CLEAR_PENDING_INT ;
 int DOWAIT_BLOCK ;
 int DOWAIT_SIG ;
 int DOWAIT_SIG_TRAP ;
 int INTOFF ;
 int INTON ;
 scalar_t__ JOBDONE ;
 int JOBS ;
 scalar_t__ JOBSTOPPED ;
 int SIGINT ;
 int TRACE (char*) ;
 scalar_t__ Tflag ;
 int WEXITSTATUS (int) ;
 scalar_t__ WIFEXITED (int) ;
 int WIFSIGNALED (int) ;
 scalar_t__ WIFSTOPPED (int) ;
 int WSTOPSIG (int) ;
 int WTERMSIG (int) ;
 int dotrap () ;
 int dowait (int,struct job*) ;
 int errno ;
 int error (char*,int ) ;
 int freejob (struct job*) ;
 int getjobstatus (struct job*) ;
 int getpid () ;
 scalar_t__ int_pending () ;
 struct job* jobtab ;
 int kill (int ,int) ;
 int rootpid ;
 scalar_t__ rootshell ;
 int setcurjob (struct job*) ;
 scalar_t__ tcsetpgrp (scalar_t__,int ) ;
 scalar_t__ ttyfd ;

int
waitforjob(struct job *jp, int *signaled)
{



 int status;
 int st;

 INTOFF;
 TRACE(("waitforjob(%%%td) called\n", jp - jobtab + 1));
 while (jp->state == 0)
  if (dowait(DOWAIT_BLOCK | (Tflag ? DOWAIT_SIG |
      DOWAIT_SIG_TRAP : 0), jp) == -1)
   dotrap();
 status = getjobstatus(jp);
 if (signaled != ((void*)0))
  *signaled = WIFSIGNALED(status);

 if (WIFEXITED(status))
  st = WEXITSTATUS(status);




 else
  st = WTERMSIG(status) + 128;
 if (! JOBS || jp->state == JOBDONE)
  freejob(jp);
 if (int_pending()) {
  if (!WIFSIGNALED(status) || WTERMSIG(status) != SIGINT)
   CLEAR_PENDING_INT;
 }





 INTON;
 return st;
}
