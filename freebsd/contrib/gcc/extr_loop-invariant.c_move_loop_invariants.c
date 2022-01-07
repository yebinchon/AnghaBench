
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loops {unsigned int num; scalar_t__* parray; struct loop* tree_root; } ;
struct loop {struct loop* outer; struct loop* inner; struct loop* next; } ;


 int DF_EQUIV_NOTES ;
 int DF_HARD_REGS ;
 int DF_UD_CHAIN ;
 int * df ;
 int df_chain_add_problem (int *,int ) ;
 int df_finish (int *) ;
 int * df_init (int) ;
 int free_loop_data (scalar_t__) ;
 int move_single_loop_invariants (struct loop*) ;
 int verify_flow_info () ;

void
move_loop_invariants (struct loops *loops)
{
  struct loop *loop;
  unsigned i;

  df = df_init (DF_HARD_REGS | DF_EQUIV_NOTES);
  df_chain_add_problem (df, DF_UD_CHAIN);


  loop = loops->tree_root;
  while (loop->inner)
    loop = loop->inner;

  while (loop != loops->tree_root)
    {
      move_single_loop_invariants (loop);

      if (loop->next)
 {
   loop = loop->next;
   while (loop->inner)
     loop = loop->inner;
 }
      else
 loop = loop->outer;
    }

  for (i = 1; i < loops->num; i++)
    if (loops->parray[i])
      free_loop_data (loops->parray[i]);

  df_finish (df);
  df = ((void*)0);




}
