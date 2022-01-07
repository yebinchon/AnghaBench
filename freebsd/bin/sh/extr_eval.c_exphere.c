
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* expdoc; int doc; } ;
union node {TYPE_1__ nhere; } ;
struct localvar {int dummy; } ;
struct jmploc {int loc; } ;
struct arglist {char** args; } ;
struct TYPE_4__ {unsigned char reset; } ;


 scalar_t__ EXERROR ;
 int INTOFF ;
 int INTON ;
 scalar_t__ exception ;
 int expandarg (int ,struct arglist*,int ) ;
 int forcelocal ;
 struct jmploc* handler ;
 struct localvar* localvars ;
 int longjmp (int ,int) ;
 int poplocalvars () ;
 scalar_t__ setjmp (int ) ;
 TYPE_2__ shellparam ;

__attribute__((used)) static void
exphere(union node *redir, struct arglist *fn)
{
 struct jmploc jmploc;
 struct jmploc *savehandler;
 struct localvar *savelocalvars;
 int need_longjmp = 0;
 unsigned char saveoptreset;

 redir->nhere.expdoc = "";
 savelocalvars = localvars;
 localvars = ((void*)0);
 saveoptreset = shellparam.reset;
 forcelocal++;
 savehandler = handler;
 if (setjmp(jmploc.loc))
  need_longjmp = exception != EXERROR;
 else {
  handler = &jmploc;
  expandarg(redir->nhere.doc, fn, 0);
  redir->nhere.expdoc = fn->args[0];
  INTOFF;
 }
 handler = savehandler;
 forcelocal--;
 poplocalvars();
 localvars = savelocalvars;
 shellparam.reset = saveoptreset;
 if (need_longjmp)
  longjmp(handler->loc, 1);
 INTON;
}
