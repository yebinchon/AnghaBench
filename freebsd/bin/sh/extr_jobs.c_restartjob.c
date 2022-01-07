
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct procstat {int status; int pid; } ;
struct job {scalar_t__ state; int nprocs; struct procstat* ps; } ;


 int INTOFF ;
 int INTON ;
 scalar_t__ JOBDONE ;
 int SIGCONT ;
 scalar_t__ WIFSTOPPED (int) ;
 int kill (int ,int ) ;
 int setcurjob (struct job*) ;

__attribute__((used)) static void
restartjob(struct job *jp)
{
 struct procstat *ps;
 int i;

 if (jp->state == JOBDONE)
  return;
 setcurjob(jp);
 INTOFF;
 kill(-jp->ps[0].pid, SIGCONT);
 for (ps = jp->ps, i = jp->nprocs ; --i >= 0 ; ps++) {
  if (WIFSTOPPED(ps->status)) {
   ps->status = -1;
   jp->state = 0;
  }
 }
 INTON;
}
