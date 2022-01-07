
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int n; int redirect; } ;
union node {TYPE_1__ nredir; } ;
struct jmploc {int loc; } ;


 int EXERROR ;
 int FORCEINTON ;
 int INTOFF ;
 int INTON ;
 int REDIR_PUSH ;
 int evaltree (int ,int) ;
 int exception ;
 int exitstatus ;
 int expredir (int ) ;
 struct jmploc* handler ;
 int longjmp (int ,int) ;
 int oexitstatus ;
 int popredir () ;
 int redirect (int ,int ) ;
 scalar_t__ setjmp (int ) ;

__attribute__((used)) static void
evalredir(union node *n, int flags)
{
 struct jmploc jmploc;
 struct jmploc *savehandler;
 volatile int in_redirect = 1;

 oexitstatus = exitstatus;
 expredir(n->nredir.redirect);
 savehandler = handler;
 if (setjmp(jmploc.loc)) {
  int e;

  handler = savehandler;
  e = exception;
  popredir();
  if (e == EXERROR && in_redirect) {
   FORCEINTON;
   return;
  }
  longjmp(handler->loc, 1);
 } else {
  INTOFF;
  handler = &jmploc;
  redirect(n->nredir.redirect, REDIR_PUSH);
  in_redirect = 0;
  INTON;
  evaltree(n->nredir.n, flags);
 }
 INTOFF;
 handler = savehandler;
 popredir();
 INTON;
}
