
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int symbolS ;
struct expr_symbol_line {char* file; unsigned int line; int * sym; struct expr_symbol_line* next; } ;


 struct expr_symbol_line* expr_symbol_lines ;

int
expr_symbol_where (symbolS *sym, char **pfile, unsigned int *pline)
{
  register struct expr_symbol_line *l;

  for (l = expr_symbol_lines; l != ((void*)0); l = l->next)
    {
      if (l->sym == sym)
 {
   *pfile = l->file;
   *pline = l->line;
   return 1;
 }
    }

  return 0;
}
