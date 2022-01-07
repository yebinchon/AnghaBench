
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct dwarf2_debug {int dummy; } ;
struct comp_unit {int error; scalar_t__ first_child_die_ptr; scalar_t__ end_ptr; scalar_t__ line_table; int stmtlist; } ;
typedef int bfd_vma ;
typedef int bfd_boolean ;
struct TYPE_5__ {int flags; } ;
typedef TYPE_1__ asymbol ;


 int BSF_FUNCTION ;
 int FALSE ;
 scalar_t__ decode_line_info (struct comp_unit*,struct dwarf2_debug*) ;
 int lookup_symbol_in_function_table (struct comp_unit*,TYPE_1__*,int ,char const**,unsigned int*) ;
 int lookup_symbol_in_variable_table (struct comp_unit*,TYPE_1__*,int ,char const**,unsigned int*) ;
 int scan_unit_for_symbols (struct comp_unit*) ;

__attribute__((used)) static bfd_boolean
comp_unit_find_line (struct comp_unit *unit,
       asymbol *sym,
       bfd_vma addr,
       const char **filename_ptr,
       unsigned int *linenumber_ptr,
       struct dwarf2_debug *stash)
{
  if (unit->error)
    return FALSE;

  if (! unit->line_table)
    {
      if (! unit->stmtlist)
 {
   unit->error = 1;
   return FALSE;
 }

      unit->line_table = decode_line_info (unit, stash);

      if (! unit->line_table)
 {
   unit->error = 1;
   return FALSE;
 }

      if (unit->first_child_die_ptr < unit->end_ptr
   && ! scan_unit_for_symbols (unit))
 {
   unit->error = 1;
   return FALSE;
 }
    }

  if (sym->flags & BSF_FUNCTION)
    return lookup_symbol_in_function_table (unit, sym, addr,
         filename_ptr,
         linenumber_ptr);
  else
    return lookup_symbol_in_variable_table (unit, sym, addr,
         filename_ptr,
         linenumber_ptr);
}
