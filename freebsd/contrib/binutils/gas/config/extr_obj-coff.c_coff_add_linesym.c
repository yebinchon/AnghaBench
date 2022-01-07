
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int symbolS ;
typedef int alent ;
struct TYPE_2__ {int * lineno; } ;


 int coff_n_line_nos ;
 TYPE_1__* coffsymbol (int ) ;
 int * current_lineno_sym ;
 scalar_t__ line_nos ;
 int symbol_get_bfdsym (int *) ;

void
coff_add_linesym (symbolS *sym)
{
  if (line_nos)
    {
      coffsymbol (symbol_get_bfdsym (current_lineno_sym))->lineno =
 (alent *) line_nos;
      coff_n_line_nos++;
      line_nos = 0;
    }
  current_lineno_sym = sym;
}
