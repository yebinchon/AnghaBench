
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union node {int dummy; } node ;
struct stackmark {int dummy; } ;


 int EV_EXIT ;
 int EXEXIT ;
 union node* NEOF ;
 scalar_t__ evalskip ;
 int evaltree (union node*,int) ;
 scalar_t__ exitstatus ;
 int exraise (int ) ;
 int nflag ;
 union node* parsecmd (int ) ;
 int popfile () ;
 int popstackmark (struct stackmark*) ;
 scalar_t__ preadateof () ;
 int setinputstring (char const*,int) ;
 int setstackmark (struct stackmark*) ;

void
evalstring(const char *s, int flags)
{
 union node *n;
 struct stackmark smark;
 int flags_exit;
 int any;

 flags_exit = flags & EV_EXIT;
 flags &= ~EV_EXIT;
 any = 0;
 setstackmark(&smark);
 setinputstring(s, 1);
 while ((n = parsecmd(0)) != NEOF) {
  if (n != ((void*)0) && !nflag) {
   if (flags_exit && preadateof())
    evaltree(n, flags | EV_EXIT);
   else
    evaltree(n, flags);
   any = 1;
   if (evalskip)
    break;
  }
  popstackmark(&smark);
  setstackmark(&smark);
 }
 popfile();
 popstackmark(&smark);
 if (!any)
  exitstatus = 0;
 if (flags_exit)
  exraise(EXEXIT);
}
