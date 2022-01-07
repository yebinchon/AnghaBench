
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stack_block {struct stack_block* prev; } ;


 int ALIGN (int) ;
 int INTOFF ;
 int INTON ;
 int MINSIZE ;
 char* SPACE (struct stack_block*) ;
 struct stack_block* ckmalloc (int) ;
 char* sstrend ;
 int stacknleft ;
 char* stacknxt ;
 struct stack_block* stackp ;

__attribute__((used)) static void
stnewblock(int nbytes)
{
 struct stack_block *sp;
 int allocsize;

 if (nbytes < MINSIZE)
  nbytes = MINSIZE;

 allocsize = ALIGN(sizeof(struct stack_block)) + ALIGN(nbytes);

 INTOFF;
 sp = ckmalloc(allocsize);
 sp->prev = stackp;
 stacknxt = SPACE(sp);
 stacknleft = allocsize - (stacknxt - (char*)sp);
 sstrend = stacknxt + stacknleft;
 stackp = sp;
 INTON;
}
