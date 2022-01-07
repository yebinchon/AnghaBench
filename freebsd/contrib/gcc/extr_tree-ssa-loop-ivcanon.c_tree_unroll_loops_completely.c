
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loops {unsigned int num; struct loop** parray; } ;
struct loop {int header; } ;
typedef enum unroll_level { ____Placeholder_unroll_level } unroll_level ;


 unsigned int TODO_cleanup_cfg ;
 int UL_ALL ;
 int UL_NO_GROWTH ;
 int canonicalize_loop_induction_variables (struct loops*,struct loop*,int,int,int) ;
 int flag_tree_loop_ivcanon ;
 scalar_t__ maybe_hot_bb_p (int ) ;
 int scev_reset () ;

unsigned int
tree_unroll_loops_completely (struct loops *loops, bool may_increase_size)
{
  unsigned i;
  struct loop *loop;
  bool changed = 0;
  enum unroll_level ul;

  for (i = 1; i < loops->num; i++)
    {
      loop = loops->parray[i];

      if (!loop)
 continue;

      if (may_increase_size && maybe_hot_bb_p (loop->header))
 ul = UL_ALL;
      else
 ul = UL_NO_GROWTH;
      changed |= canonicalize_loop_induction_variables (loops, loop,
       0, ul,
       !flag_tree_loop_ivcanon);
    }



  scev_reset ();

  if (changed)
    return TODO_cleanup_cfg;
  return 0;
}
