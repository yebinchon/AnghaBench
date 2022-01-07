
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int backgnd; struct nodelist* cmdlist; } ;
union node {TYPE_1__ npipe; } ;
struct nodelist {int n; struct nodelist* next; } ;
struct job {int dummy; } ;


 int EV_EXIT ;
 int INTOFF ;
 int INTON ;
 int TRACE (char*) ;
 int close (int) ;
 int dup2 (int,int) ;
 int errno ;
 int error (char*,int ) ;
 int evaltree (int ,int ) ;
 scalar_t__ exitstatus ;
 scalar_t__ forkshell (struct job*,int ,int ) ;
 struct job* makejob (union node*,int) ;
 scalar_t__ pipe (int*) ;
 int prehash (int ) ;
 int strerror (int ) ;
 scalar_t__ waitforjob (struct job*,int*) ;

__attribute__((used)) static void
evalpipe(union node *n)
{
 struct job *jp;
 struct nodelist *lp;
 int pipelen;
 int prevfd;
 int pip[2];

 TRACE(("evalpipe(%p) called\n", (void *)n));
 pipelen = 0;
 for (lp = n->npipe.cmdlist ; lp ; lp = lp->next)
  pipelen++;
 INTOFF;
 jp = makejob(n, pipelen);
 prevfd = -1;
 for (lp = n->npipe.cmdlist ; lp ; lp = lp->next) {
  prehash(lp->n);
  pip[1] = -1;
  if (lp->next) {
   if (pipe(pip) < 0) {
    if (prevfd >= 0)
     close(prevfd);
    error("Pipe call failed: %s", strerror(errno));
   }
  }
  if (forkshell(jp, lp->n, n->npipe.backgnd) == 0) {
   INTON;
   if (prevfd > 0) {
    dup2(prevfd, 0);
    close(prevfd);
   }
   if (pip[1] >= 0) {
    if (!(prevfd >= 0 && pip[0] == 0))
     close(pip[0]);
    if (pip[1] != 1) {
     dup2(pip[1], 1);
     close(pip[1]);
    }
   }
   evaltree(lp->n, EV_EXIT);
  }
  if (prevfd >= 0)
   close(prevfd);
  prevfd = pip[0];
  if (pip[1] != -1)
   close(pip[1]);
 }
 INTON;
 if (n->npipe.backgnd == 0) {
  INTOFF;
  exitstatus = waitforjob(jp, (int *)((void*)0));
  TRACE(("evalpipe:  job done exit status %d\n", exitstatus));
  INTON;
 } else
  exitstatus = 0;
}
