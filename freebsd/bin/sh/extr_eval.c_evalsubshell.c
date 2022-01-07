
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int n; int redirect; } ;
union node {scalar_t__ type; TYPE_1__ nredir; } ;
struct job {int dummy; } ;


 int EV_EXIT ;
 int EV_TESTED ;
 int INTOFF ;
 int INTON ;
 scalar_t__ NBACKGND ;
 int evaltree (int ,int) ;
 scalar_t__ exitstatus ;
 int expredir (int ) ;
 scalar_t__ forkshell (struct job*,union node*,int) ;
 int have_traps () ;
 struct job* makejob (union node*,int) ;
 scalar_t__ oexitstatus ;
 int redirect (int ,int ) ;
 scalar_t__ waitforjob (struct job*,int*) ;

__attribute__((used)) static void
evalsubshell(union node *n, int flags)
{
 struct job *jp;
 int backgnd = (n->type == NBACKGND);

 oexitstatus = exitstatus;
 expredir(n->nredir.redirect);
 if ((!backgnd && flags & EV_EXIT && !have_traps()) ||
   forkshell(jp = makejob(n, 1), n, backgnd) == 0) {
  if (backgnd)
   flags &=~ EV_TESTED;
  redirect(n->nredir.redirect, 0);
  evaltree(n->nredir.n, flags | EV_EXIT);
 } else if (! backgnd) {
  INTOFF;
  exitstatus = waitforjob(jp, (int *)((void*)0));
  INTON;
 } else
  exitstatus = 0;
}
