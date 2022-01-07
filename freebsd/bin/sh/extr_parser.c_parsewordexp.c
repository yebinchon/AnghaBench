
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {union node* next; } ;
union node {TYPE_1__ narg; } ;


 int TEOF ;
 int TWORD ;
 scalar_t__ checkkwd ;
 scalar_t__ doprompt ;
 int * heredoclist ;
 union node* makename () ;
 scalar_t__ needprompt ;
 int parser_temp_free_all () ;
 int readtoken () ;
 int setprompt (int ) ;
 int synexpect (int) ;
 scalar_t__ tokpushback ;

union node *
parsewordexp(void)
{
 union node *n, *first = ((void*)0), **pnext;
 int t;




 parser_temp_free_all();
 heredoclist = ((void*)0);

 tokpushback = 0;
 checkkwd = 0;
 doprompt = 0;
 setprompt(0);
 needprompt = 0;
 pnext = &first;
 while ((t = readtoken()) != TEOF) {
  if (t != TWORD)
   synexpect(TWORD);
  n = makename();
  *pnext = n;
  pnext = &n->narg.next;
 }
 return first;
}
