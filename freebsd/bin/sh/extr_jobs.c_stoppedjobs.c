
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct job {scalar_t__ used; scalar_t__ state; } ;


 scalar_t__ JOBSTOPPED ;
 int job_warning ;
 struct job* jobtab ;
 int njobs ;
 int out2fmt_flush (char*) ;

int
stoppedjobs(void)
{
 int jobno;
 struct job *jp;

 if (job_warning)
  return (0);
 for (jobno = 1, jp = jobtab; jobno <= njobs; jobno++, jp++) {
  if (jp->used == 0)
   continue;
  if (jp->state == JOBSTOPPED) {
   out2fmt_flush("You have stopped jobs.\n");
   job_warning = 2;
   return (1);
  }
 }

 return (0);
}
