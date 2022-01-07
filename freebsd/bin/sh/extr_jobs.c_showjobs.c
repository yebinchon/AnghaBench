
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct job {scalar_t__ nprocs; scalar_t__ state; int remembered; scalar_t__ changed; int used; } ;


 scalar_t__ JOBDONE ;
 int SHOWJOBS_DEFAULT ;
 int SHOWJOBS_VERBOSE ;
 int TRACE (char*) ;
 struct job* bgjob ;
 int checkzombies () ;
 int freejob (struct job*) ;
 scalar_t__ iflag ;
 struct job* jobtab ;
 int njobs ;
 int showjob (struct job*,int) ;

void
showjobs(int change, int mode)
{
 int jobno;
 struct job *jp;

 TRACE(("showjobs(%d) called\n", change));
 checkzombies();
 for (jobno = 1, jp = jobtab ; jobno <= njobs ; jobno++, jp++) {
  if (! jp->used)
   continue;
  if (jp->nprocs == 0) {
   freejob(jp);
   continue;
  }
  if (change && ! jp->changed)
   continue;
  showjob(jp, mode);
  if (mode == SHOWJOBS_DEFAULT || mode == SHOWJOBS_VERBOSE) {
   jp->changed = 0;



   if (jp->state == JOBDONE && !jp->remembered &&
     (iflag || jp != bgjob)) {
    freejob(jp);
   }
  }
 }
}
