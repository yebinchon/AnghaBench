
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct job {scalar_t__ state; scalar_t__ used; scalar_t__ remembered; int changed; } ;


 int DOWAIT_BLOCK ;
 int DOWAIT_SIG ;
 scalar_t__ JOBDONE ;
 int WEXITSTATUS (int) ;
 scalar_t__ WIFEXITED (int) ;
 int WTERMSIG (int) ;
 struct job* bgjob ;
 int dowait (int,struct job*) ;
 int freejob (struct job*) ;
 int getjobstatus (struct job*) ;
 int iflag ;
 struct job* jobtab ;
 int njobs ;
 int pendingsig_waitcmd ;

__attribute__((used)) static int
waitcmdloop(struct job *job)
{
 int status, retval, sig;
 struct job *jp;






 do {
  if (job != ((void*)0)) {
   if (job->state == JOBDONE) {
    status = getjobstatus(job);
    if (WIFEXITED(status))
     retval = WEXITSTATUS(status);
    else
     retval = WTERMSIG(status) + 128;
    if (! iflag || ! job->changed)
     freejob(job);
    else {
     job->remembered = 0;
     if (job == bgjob)
      bgjob = ((void*)0);
    }
    return retval;
   }
  } else {
   for (jp = jobtab ; jp < jobtab + njobs; jp++)
    if (jp->used && jp->state == JOBDONE) {
     if (! iflag || ! jp->changed)
      freejob(jp);
     else {
      jp->remembered = 0;
      if (jp == bgjob)
       bgjob = ((void*)0);
     }
    }
   for (jp = jobtab ; ; jp++) {
    if (jp >= jobtab + njobs) {
     return 0;
    }
    if (jp->used && jp->state == 0)
     break;
   }
  }
 } while (dowait(DOWAIT_BLOCK | DOWAIT_SIG, (struct job *)((void*)0)) != -1);

 sig = pendingsig_waitcmd;
 pendingsig_waitcmd = 0;
 return sig + 128;
}
