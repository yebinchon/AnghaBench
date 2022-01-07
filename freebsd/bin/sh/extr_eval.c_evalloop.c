
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ch2; int ch1; } ;
union node {scalar_t__ type; TYPE_1__ nbinary; } ;


 int EV_TESTED ;
 scalar_t__ NWHILE ;
 scalar_t__ SKIPBREAK ;
 scalar_t__ SKIPCONT ;
 scalar_t__ SKIPRETURN ;
 scalar_t__ evalskip ;
 int evaltree (int ,int) ;
 int exitstatus ;
 int loopnest ;
 scalar_t__ skipcount ;

__attribute__((used)) static void
evalloop(union node *n, int flags)
{
 int status;

 loopnest++;
 status = 0;
 for (;;) {
  if (!evalskip)
   evaltree(n->nbinary.ch1, EV_TESTED);
  if (evalskip) {
   if (evalskip == SKIPCONT && --skipcount <= 0) {
    evalskip = 0;
    continue;
   }
   if (evalskip == SKIPBREAK && --skipcount <= 0)
    evalskip = 0;
   if (evalskip == SKIPRETURN)
    status = exitstatus;
   break;
  }
  if (n->type == NWHILE) {
   if (exitstatus != 0)
    break;
  } else {
   if (exitstatus == 0)
    break;
  }
  evaltree(n->nbinary.ch2, flags);
  status = exitstatus;
 }
 loopnest--;
 exitstatus = status;
}
