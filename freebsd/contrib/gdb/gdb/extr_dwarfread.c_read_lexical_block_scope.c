
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objfile {int dummy; } ;
struct dieinfo {int die_length; int at_high_pc; int at_low_pc; } ;
struct context_stack {int * locals; int start_addr; int old_blocks; } ;


 int finish_block (int ,int **,int ,int ,int ,struct objfile*) ;
 int * local_symbols ;
 struct context_stack* pop_context () ;
 int process_dies (char*,char*,struct objfile*) ;
 int push_context (int ,int ) ;

__attribute__((used)) static void
read_lexical_block_scope (struct dieinfo *dip, char *thisdie, char *enddie,
     struct objfile *objfile)
{
  struct context_stack *new;

  push_context (0, dip->at_low_pc);
  process_dies (thisdie + dip->die_length, enddie, objfile);
  new = pop_context ();
  if (local_symbols != ((void*)0))
    {
      finish_block (0, &local_symbols, new->old_blocks, new->start_addr,
      dip->at_high_pc, objfile);
    }
  local_symbols = new->locals;
}
