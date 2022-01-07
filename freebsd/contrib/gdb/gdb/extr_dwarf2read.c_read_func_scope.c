
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ entry_point; scalar_t__ entry_func_highpc; scalar_t__ entry_func_lowpc; } ;
struct objfile {TYPE_1__ ei; int section_offsets; } ;
struct dwarf2_cu {scalar_t__ language; int * list_in_scope; struct objfile* objfile; } ;
struct die_info {scalar_t__ tag; struct die_info* child; int type; } ;
struct context_stack {int params; int locals; int old_blocks; int name; } ;
struct cleanup {int dummy; } ;
struct attribute {int dummy; } ;
typedef scalar_t__ CORE_ADDR ;


 scalar_t__ ANOFFSET (int ,int ) ;
 int DW_AT_frame_base ;
 int SECT_OFF_TEXT (struct objfile*) ;
 int add_to_cu_func_list (char*,scalar_t__,scalar_t__,struct dwarf2_cu*) ;
 char* determine_prefix (struct die_info*,struct dwarf2_cu*) ;
 struct die_info* die_specification (struct die_info*,struct dwarf2_cu*) ;
 int do_cleanups (struct cleanup*) ;
 struct attribute* dwarf2_attr (struct die_info*,int ,struct dwarf2_cu*) ;
 int dwarf2_get_pc_bounds (struct die_info*,scalar_t__*,scalar_t__*,struct dwarf2_cu*) ;
 char* dwarf2_linkage_name (struct die_info*,struct dwarf2_cu*) ;
 int dwarf2_symbol_mark_computed (struct attribute*,int ,struct dwarf2_cu*) ;
 int file_symbols ;
 int finish_block (int ,int *,int ,scalar_t__,scalar_t__,struct objfile*) ;
 scalar_t__ language_cplus ;
 int local_symbols ;
 struct cleanup* make_cleanup (int ,char*) ;
 int new_symbol (struct die_info*,int ,struct dwarf2_cu*) ;
 scalar_t__ outermost_context_p () ;
 int param_symbols ;
 struct context_stack* pop_context () ;
 int process_die (struct die_info*,struct dwarf2_cu*) ;
 char const* processing_current_prefix ;
 struct context_stack* push_context (int ,scalar_t__) ;
 struct die_info* sibling_die (struct die_info*) ;
 int xfree ;

__attribute__((used)) static void
read_func_scope (struct die_info *die, struct dwarf2_cu *cu)
{
  struct objfile *objfile = cu->objfile;
  struct context_stack *new;
  CORE_ADDR lowpc;
  CORE_ADDR highpc;
  struct die_info *child_die;
  struct attribute *attr;
  char *name;
  const char *previous_prefix = processing_current_prefix;
  struct cleanup *back_to = ((void*)0);
  CORE_ADDR baseaddr;

  baseaddr = ANOFFSET (objfile->section_offsets, SECT_OFF_TEXT (objfile));

  name = dwarf2_linkage_name (die, cu);



  if (name == ((void*)0) || !dwarf2_get_pc_bounds (die, &lowpc, &highpc, cu))
    return;

  if (cu->language == language_cplus)
    {
      struct die_info *spec_die = die_specification (die, cu);
      if (spec_die != ((void*)0))
 {
   char *specification_prefix = determine_prefix (spec_die, cu);
   processing_current_prefix = specification_prefix;
   back_to = make_cleanup (xfree, specification_prefix);
 }
    }

  lowpc += baseaddr;
  highpc += baseaddr;


  add_to_cu_func_list (name, lowpc, highpc, cu);

  if (objfile->ei.entry_point >= lowpc &&
      objfile->ei.entry_point < highpc)
    {
      objfile->ei.entry_func_lowpc = lowpc;
      objfile->ei.entry_func_highpc = highpc;
    }

  new = push_context (0, lowpc);
  new->name = new_symbol (die, die->type, cu);



  attr = dwarf2_attr (die, DW_AT_frame_base, cu);
  if (attr)
    dwarf2_symbol_mark_computed (attr, new->name, cu);

  cu->list_in_scope = &local_symbols;

  if (die->child != ((void*)0))
    {
      child_die = die->child;
      while (child_die && child_die->tag)
 {
   process_die (child_die, cu);
   child_die = sibling_die (child_die);
 }
    }

  new = pop_context ();

  finish_block (new->name, &local_symbols, new->old_blocks,
  lowpc, highpc, objfile);





  local_symbols = new->locals;
  param_symbols = new->params;



  if (outermost_context_p ())
    cu->list_in_scope = &file_symbols;

  processing_current_prefix = previous_prefix;
  if (back_to != ((void*)0))
    do_cleanups (back_to);
}
