
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ entry_point; scalar_t__ entry_func_lowpc; scalar_t__ entry_func_highpc; } ;
struct objfile {TYPE_1__ ei; } ;
struct dieinfo {scalar_t__ at_low_pc; scalar_t__ at_high_pc; int die_length; int * at_name; } ;
struct context_stack {int start_addr; int old_blocks; int name; } ;


 int DIE_ID ;
 int complaint (int *,char*,int ) ;
 int file_symbols ;
 int finish_block (int ,int *,int ,int ,scalar_t__,struct objfile*) ;
 int * list_in_scope ;
 int local_symbols ;
 int new_symbol (struct dieinfo*,struct objfile*) ;
 struct context_stack* pop_context () ;
 int process_dies (char*,char*,struct objfile*) ;
 struct context_stack* push_context (int ,scalar_t__) ;
 int symfile_complaints ;

__attribute__((used)) static void
read_func_scope (struct dieinfo *dip, char *thisdie, char *enddie,
   struct objfile *objfile)
{
  struct context_stack *new;





  if (dip->at_name == ((void*)0))
    {
      complaint (&symfile_complaints, "DIE @ 0x%x, AT_name tag missing",
   DIE_ID);
      return;
    }

  if (objfile->ei.entry_point >= dip->at_low_pc &&
      objfile->ei.entry_point < dip->at_high_pc)
    {
      objfile->ei.entry_func_lowpc = dip->at_low_pc;
      objfile->ei.entry_func_highpc = dip->at_high_pc;
    }
  new = push_context (0, dip->at_low_pc);
  new->name = new_symbol (dip, objfile);
  list_in_scope = &local_symbols;
  process_dies (thisdie + dip->die_length, enddie, objfile);
  new = pop_context ();

  finish_block (new->name, &local_symbols, new->old_blocks,
  new->start_addr, dip->at_high_pc, objfile);
  list_in_scope = &file_symbols;
}
