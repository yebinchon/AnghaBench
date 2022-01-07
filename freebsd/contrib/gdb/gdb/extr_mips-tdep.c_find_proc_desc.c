
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symtab_and_line {scalar_t__ pc; scalar_t__ end; } ;
struct symbol {int dummy; } ;
struct linked_proc_info {int info; struct linked_proc_info* next; } ;
struct frame_info {int dummy; } ;
typedef int * mips_extra_func_info_t ;
typedef scalar_t__ CORE_ADDR ;


 int BLOCK_START (int ) ;
 scalar_t__ PROC_DESC_IS_DUMMY (int *) ;
 scalar_t__ PROC_HIGH_ADDR (int *) ;
 scalar_t__ PROC_LOW_ADDR (int *) ;
 struct symbol* PROC_SYMBOL (int *) ;
 int SYMBOL_BLOCK_VALUE (struct symbol*) ;
 struct symtab_and_line find_pc_line (int ,int ) ;
 int * heuristic_proc_desc (scalar_t__,scalar_t__,struct frame_info*,int) ;
 scalar_t__ heuristic_proc_start (scalar_t__) ;
 struct linked_proc_info* linked_proc_desc_table ;
 int * non_heuristic_proc_desc (scalar_t__,scalar_t__*) ;

__attribute__((used)) static mips_extra_func_info_t
find_proc_desc (CORE_ADDR pc, struct frame_info *next_frame, int cur_frame)
{
  mips_extra_func_info_t proc_desc;
  CORE_ADDR startaddr = 0;

  proc_desc = non_heuristic_proc_desc (pc, &startaddr);

  if (proc_desc)
    {






      if (next_frame == ((void*)0))
 {
   struct symtab_and_line val;
   struct symbol *proc_symbol =
     PROC_DESC_IS_DUMMY (proc_desc) ? 0 : PROC_SYMBOL (proc_desc);

   if (proc_symbol)
     {
       val = find_pc_line (BLOCK_START
      (SYMBOL_BLOCK_VALUE (proc_symbol)), 0);
       val.pc = val.end ? val.end : pc;
     }
   if (!proc_symbol || pc < val.pc)
     {
       mips_extra_func_info_t found_heuristic =
  heuristic_proc_desc (PROC_LOW_ADDR (proc_desc),
         pc, next_frame, cur_frame);
       if (found_heuristic)
  proc_desc = found_heuristic;
     }
 }
    }
  else
    {





      struct linked_proc_info *link;

      for (link = linked_proc_desc_table; link; link = link->next)
 if (PROC_LOW_ADDR (&link->info) <= pc
     && PROC_HIGH_ADDR (&link->info) > pc)
   return &link->info;

      if (startaddr == 0)
 startaddr = heuristic_proc_start (pc);

      proc_desc = heuristic_proc_desc (startaddr, pc, next_frame, cur_frame);
    }
  return proc_desc;
}
