
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union node {int dummy; } node ;


 union node* NEOF ;
 int TEOF ;
 int TNL ;
 scalar_t__ checkkwd ;
 int doprompt ;
 int * heredoclist ;
 union node* list (int) ;
 scalar_t__ needprompt ;
 int parser_temp_free_all () ;
 int readtoken () ;
 int setprompt (int) ;
 scalar_t__ tokpushback ;

union node *
parsecmd(int interact)
{
 int t;




 parser_temp_free_all();
 heredoclist = ((void*)0);

 tokpushback = 0;
 checkkwd = 0;
 doprompt = interact;
 if (doprompt)
  setprompt(1);
 else
  setprompt(0);
 needprompt = 0;
 t = readtoken();
 if (t == TEOF)
  return NEOF;
 if (t == TNL)
  return ((void*)0);
 tokpushback++;
 return list(1);
}
