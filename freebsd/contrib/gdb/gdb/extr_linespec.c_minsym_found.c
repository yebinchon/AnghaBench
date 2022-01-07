
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symtabs_and_lines {int nelts; struct symtab_and_line* sals; } ;
struct symtab_and_line {int pc; int section; } ;
struct minimal_symbol {int dummy; } ;
struct bfd_section {int dummy; } ;


 scalar_t__ FUNCTION_START_OFFSET ;
 int SKIP_PROLOGUE (int ) ;
 int SYMBOL_BFD_SECTION (struct minimal_symbol*) ;
 int SYMBOL_VALUE_ADDRESS (struct minimal_symbol*) ;
 struct symtab_and_line find_pc_sect_line (int ,struct bfd_section*,int ) ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static struct symtabs_and_lines
minsym_found (int funfirstline, struct minimal_symbol *msymbol)
{
  struct symtabs_and_lines values;

  values.sals = (struct symtab_and_line *)
    xmalloc (sizeof (struct symtab_and_line));
  values.sals[0] = find_pc_sect_line (SYMBOL_VALUE_ADDRESS (msymbol),
          (struct bfd_section *) 0, 0);
  values.sals[0].section = SYMBOL_BFD_SECTION (msymbol);
  if (funfirstline)
    {
      values.sals[0].pc += FUNCTION_START_OFFSET;
      values.sals[0].pc = SKIP_PROLOGUE (values.sals[0].pc);
    }
  values.nelts = 1;
  return values;
}
