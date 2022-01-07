
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objfile {int section_offsets; } ;
struct dwarf2_cu {struct objfile* objfile; } ;
struct die_info {scalar_t__ tag; struct die_info* child; } ;
struct context_stack {int * locals; int start_addr; int old_blocks; } ;
typedef scalar_t__ CORE_ADDR ;


 scalar_t__ ANOFFSET (int ,int ) ;
 int SECT_OFF_TEXT (struct objfile*) ;
 int dwarf2_get_pc_bounds (struct die_info*,scalar_t__*,scalar_t__*,struct dwarf2_cu*) ;
 int finish_block (int ,int **,int ,int ,scalar_t__,struct objfile*) ;
 int * local_symbols ;
 struct context_stack* pop_context () ;
 int process_die (struct die_info*,struct dwarf2_cu*) ;
 int push_context (int ,scalar_t__) ;
 struct die_info* sibling_die (struct die_info*) ;

__attribute__((used)) static void
read_lexical_block_scope (struct die_info *die, struct dwarf2_cu *cu)
{
  struct objfile *objfile = cu->objfile;
  struct context_stack *new;
  CORE_ADDR lowpc, highpc;
  struct die_info *child_die;
  CORE_ADDR baseaddr;

  baseaddr = ANOFFSET (objfile->section_offsets, SECT_OFF_TEXT (objfile));






  if (!dwarf2_get_pc_bounds (die, &lowpc, &highpc, cu))
    return;
  lowpc += baseaddr;
  highpc += baseaddr;

  push_context (0, lowpc);
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

  if (local_symbols != ((void*)0))
    {
      finish_block (0, &local_symbols, new->old_blocks, new->start_addr,
      highpc, objfile);
    }
  local_symbols = new->locals;
}
