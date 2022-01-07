
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {union node* com; } ;
struct TYPE_9__ {int next; int text; } ;
struct TYPE_8__ {union node* next; union node* body; } ;
struct TYPE_7__ {union node* elsepart; union node* ifpart; union node* test; } ;
struct TYPE_6__ {union node* ch2; union node* ch1; } ;
union node {int type; TYPE_5__ nnot; TYPE_4__ narg; TYPE_3__ nclist; TYPE_2__ nif; TYPE_1__ nbinary; } ;
struct stackmark {int dummy; } ;
struct backcmd {int dummy; } ;


 int EV_EXIT ;
 int EV_TESTED ;
 int EXEXIT ;
 int TRACE (char*) ;
 int defun (int ,int ) ;
 int displayhist ;
 int dotrap () ;
 scalar_t__ eflag ;
 union node* evalcase (union node*) ;
 int evalcommand (union node*,int,struct backcmd*) ;
 int evalfor (union node*,int) ;
 int evalloop (union node*,int) ;
 int evalpipe (union node*) ;
 int evalredir (union node*,int) ;
 int evalskip ;
 int evalsubshell (union node*,int) ;
 int exitshell (scalar_t__) ;
 scalar_t__ exitstatus ;
 int exraise (int ) ;
 int flushout (int *) ;
 int out1fmt (char*,int) ;
 int output ;
 scalar_t__ pendingsig ;
 int popstackmark (struct stackmark*) ;
 int setstackmark (struct stackmark*) ;

void
evaltree(union node *n, int flags)
{
 int do_etest;
 union node *next;
 struct stackmark smark;

 setstackmark(&smark);
 do_etest = 0;
 if (n == ((void*)0)) {
  TRACE(("evaltree(NULL) called\n"));
  exitstatus = 0;
  goto out;
 }
 do {
  next = ((void*)0);

  displayhist = 1;

  TRACE(("evaltree(%p: %d) called\n", (void *)n, n->type));
  switch (n->type) {
  case 131:
   evaltree(n->nbinary.ch1, flags & ~EV_EXIT);
   if (evalskip)
    goto out;
   next = n->nbinary.ch2;
   break;
  case 144:
   evaltree(n->nbinary.ch1, EV_TESTED);
   if (evalskip || exitstatus != 0) {
    goto out;
   }
   next = n->nbinary.ch2;
   break;
  case 134:
   evaltree(n->nbinary.ch1, EV_TESTED);
   if (evalskip || exitstatus == 0)
    goto out;
   next = n->nbinary.ch2;
   break;
  case 132:
   evalredir(n, flags);
   break;
  case 130:
   evalsubshell(n, flags);
   do_etest = !(flags & EV_TESTED);
   break;
  case 143:
   evalsubshell(n, flags);
   break;
  case 136: {
   evaltree(n->nif.test, EV_TESTED);
   if (evalskip)
    goto out;
   if (exitstatus == 0)
    next = n->nif.ifpart;
   else if (n->nif.elsepart)
    next = n->nif.elsepart;
   else
    exitstatus = 0;
   break;
  }
  case 128:
  case 129:
   evalloop(n, flags & ~EV_EXIT);
   break;
  case 137:
   evalfor(n, flags & ~EV_EXIT);
   break;
  case 142:
   next = evalcase(n);
   break;
  case 141:
   next = n->nclist.body;
   break;
  case 140:
   if (n->nclist.body) {
    evaltree(n->nclist.body, flags & ~EV_EXIT);
    if (evalskip)
     goto out;
   }
   next = n->nclist.next;
   break;
  case 138:
   defun(n->narg.text, n->narg.next);
   exitstatus = 0;
   break;
  case 135:
   evaltree(n->nnot.com, EV_TESTED);
   if (evalskip)
    goto out;
   exitstatus = !exitstatus;
   break;

  case 133:
   evalpipe(n);
   do_etest = !(flags & EV_TESTED);
   break;
  case 139:
   evalcommand(n, flags, (struct backcmd *)((void*)0));
   do_etest = !(flags & EV_TESTED);
   break;
  default:
   out1fmt("Node type = %d\n", n->type);
   flushout(&output);
   break;
  }
  n = next;
  popstackmark(&smark);
  setstackmark(&smark);
 } while (n != ((void*)0));
out:
 popstackmark(&smark);
 if (pendingsig)
  dotrap();
 if (eflag && exitstatus != 0 && do_etest)
  exitshell(exitstatus);
 if (flags & EV_EXIT)
  exraise(EXEXIT);
}
