
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {union node* body; union node* next; union node* pattern; } ;
struct TYPE_5__ {union node* next; } ;
struct TYPE_4__ {union node* cases; int expr; } ;
union node {scalar_t__ type; TYPE_3__ nclist; TYPE_2__ narg; TYPE_1__ ncase; } ;
struct arglist {int * args; } ;


 int EXP_TILDE ;
 scalar_t__ NCLISTFALLTHRU ;
 scalar_t__ casematch (union node*,int ) ;
 int emptyarglist (struct arglist*) ;
 scalar_t__ exitstatus ;
 int expandarg (int ,struct arglist*,int ) ;
 scalar_t__ oexitstatus ;

__attribute__((used)) static union node *
evalcase(union node *n)
{
 union node *cp;
 union node *patp;
 struct arglist arglist;

 emptyarglist(&arglist);
 oexitstatus = exitstatus;
 expandarg(n->ncase.expr, &arglist, EXP_TILDE);
 for (cp = n->ncase.cases ; cp ; cp = cp->nclist.next) {
  for (patp = cp->nclist.pattern ; patp ; patp = patp->narg.next) {
   if (casematch(patp, arglist.args[0])) {
    while (cp->nclist.next &&
        cp->type == NCLISTFALLTHRU &&
        cp->nclist.body == ((void*)0))
     cp = cp->nclist.next;
    if (cp->nclist.next &&
        cp->type == NCLISTFALLTHRU)
     return (cp);
    if (cp->nclist.body == ((void*)0))
     exitstatus = 0;
    return (cp->nclist.body);
   }
  }
 }
 exitstatus = 0;
 return (((void*)0));
}
