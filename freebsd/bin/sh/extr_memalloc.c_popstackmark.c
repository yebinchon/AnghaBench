
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stackmark {scalar_t__ stackp; scalar_t__ stacknleft; scalar_t__ stacknxt; } ;
struct stack_block {scalar_t__ prev; } ;


 int INTOFF ;
 int INTON ;
 int ckfree (struct stack_block*) ;
 scalar_t__ sstrend ;
 scalar_t__ stacknleft ;
 scalar_t__ stacknxt ;
 scalar_t__ stackp ;

void
popstackmark(struct stackmark *mark)
{
 struct stack_block *sp;

 INTOFF;
 while (stackp != mark->stackp) {
  sp = stackp;
  stackp = sp->prev;
  ckfree(sp);
 }
 stacknxt = mark->stacknxt;
 stacknleft = mark->stacknleft;
 sstrend = stacknxt + stacknleft;
 INTON;
}
