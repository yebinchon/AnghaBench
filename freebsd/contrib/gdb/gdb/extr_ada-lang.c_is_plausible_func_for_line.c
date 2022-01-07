
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symtab_and_line {int line; } ;
struct symbol {int dummy; } ;


 struct symtab_and_line find_function_start_sal (struct symbol*,int ) ;

__attribute__((used)) static int
is_plausible_func_for_line (struct symbol *sym, int line_num)
{
  struct symtab_and_line start_sal;

  if (sym == ((void*)0))
    return 0;

  start_sal = find_function_start_sal (sym, 0);

  return (start_sal.line != 0 && line_num >= start_sal.line);
}
