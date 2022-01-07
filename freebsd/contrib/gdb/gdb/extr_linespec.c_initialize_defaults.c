
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symtab_and_line {int line; struct symtab* symtab; } ;
struct symtab {int dummy; } ;


 struct symtab_and_line get_current_source_symtab_and_line () ;

__attribute__((used)) static void
initialize_defaults (struct symtab **default_symtab, int *default_line)
{
  if (*default_symtab == 0)
    {



      struct symtab_and_line cursal =
 get_current_source_symtab_and_line ();

      *default_symtab = cursal.symtab;
      *default_line = cursal.line;
    }
}
