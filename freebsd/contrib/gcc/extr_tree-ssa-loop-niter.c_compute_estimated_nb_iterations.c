
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nb_iter_bound {int bound; struct nb_iter_bound* next; } ;
struct loop {int estimated_nb_iterations; struct nb_iter_bound* bounds; } ;


 scalar_t__ INTEGER_CST ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ chrec_contains_undetermined (int ) ;
 scalar_t__ tree_int_cst_lt (int ,int ) ;

__attribute__((used)) static void
compute_estimated_nb_iterations (struct loop *loop)
{
  struct nb_iter_bound *bound;

  for (bound = loop->bounds; bound; bound = bound->next)
    {
      if (TREE_CODE (bound->bound) != INTEGER_CST)
 continue;



      if (chrec_contains_undetermined (loop->estimated_nb_iterations)
   || tree_int_cst_lt (bound->bound, loop->estimated_nb_iterations))
 loop->estimated_nb_iterations = bound->bound;
    }
}
