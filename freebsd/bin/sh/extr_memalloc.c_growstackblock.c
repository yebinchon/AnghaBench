
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stack_block {struct stack_block* prev; } ;
typedef int pointer ;


 int ALIGN (int) ;
 int INTOFF ;
 int INTON ;
 int INT_MAX ;
 char* SPACE (struct stack_block*) ;
 struct stack_block* ckrealloc (int ,int) ;
 int error (char*) ;
 int memcpy (char*,char*,int) ;
 char* sstrend ;
 int stacknleft ;
 char* stacknxt ;
 struct stack_block* stackp ;
 char* stalloc (int) ;
 int stunalloc (char*) ;

__attribute__((used)) static void
growstackblock(int min)
{
 char *p;
 int newlen;
 char *oldspace;
 int oldlen;
 struct stack_block *sp;
 struct stack_block *oldstackp;

 if (min < stacknleft)
  min = stacknleft;
 if ((unsigned int)min >=
     INT_MAX / 2 - ALIGN(sizeof(struct stack_block)))
  error("Out of space");
 min += stacknleft;
 min += ALIGN(sizeof(struct stack_block));
 newlen = 512;
 while (newlen < min)
  newlen <<= 1;
 oldspace = stacknxt;
 oldlen = stacknleft;

 if (stackp != ((void*)0) && stacknxt == SPACE(stackp)) {
  INTOFF;
  oldstackp = stackp;
  stackp = oldstackp->prev;
  sp = ckrealloc((pointer)oldstackp, newlen);
  sp->prev = stackp;
  stackp = sp;
  stacknxt = SPACE(sp);
  stacknleft = newlen - (stacknxt - (char*)sp);
  sstrend = stacknxt + stacknleft;
  INTON;
 } else {
  newlen -= ALIGN(sizeof(struct stack_block));
  p = stalloc(newlen);
  if (oldlen != 0)
   memcpy(p, oldspace, oldlen);
  stunalloc(p);
 }
}
