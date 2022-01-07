
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct funcinfo {scalar_t__ tag; } ;
struct dwarf2_debug {struct funcinfo* inliner_chain; } ;
struct comp_unit {int error; scalar_t__ first_child_die_ptr; scalar_t__ end_ptr; scalar_t__ line_table; int stmtlist; } ;
typedef int bfd_vma ;
typedef int bfd_boolean ;


 scalar_t__ DW_TAG_inlined_subroutine ;
 int FALSE ;
 scalar_t__ decode_line_info (struct comp_unit*,struct dwarf2_debug*) ;
 int lookup_address_in_function_table (struct comp_unit*,int ,struct funcinfo**,char const**) ;
 int lookup_address_in_line_info_table (scalar_t__,int ,struct funcinfo*,char const**,unsigned int*) ;
 int scan_unit_for_symbols (struct comp_unit*) ;

__attribute__((used)) static bfd_boolean
comp_unit_find_nearest_line (struct comp_unit *unit,
        bfd_vma addr,
        const char **filename_ptr,
        const char **functionname_ptr,
        unsigned int *linenumber_ptr,
        struct dwarf2_debug *stash)
{
  bfd_boolean line_p;
  bfd_boolean func_p;
  struct funcinfo *function;

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

  function = ((void*)0);
  func_p = lookup_address_in_function_table (unit, addr,
          &function, functionname_ptr);
  if (func_p && (function->tag == DW_TAG_inlined_subroutine))
    stash->inliner_chain = function;
  line_p = lookup_address_in_line_info_table (unit->line_table, addr,
           function, filename_ptr,
           linenumber_ptr);
  return line_p || func_p;
}
