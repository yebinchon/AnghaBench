
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stackmark {int stacknleft; scalar_t__ stacknxt; int * stackp; } ;


 scalar_t__ SPACE (int *) ;
 int stacknleft ;
 scalar_t__ stacknxt ;
 int * stackp ;
 int stalloc (int) ;

void
setstackmark(struct stackmark *mark)
{
 mark->stackp = stackp;
 mark->stacknxt = stacknxt;
 mark->stacknleft = stacknleft;

 if (stackp != ((void*)0) && stacknxt == SPACE(stackp))
  stalloc(1);
}
