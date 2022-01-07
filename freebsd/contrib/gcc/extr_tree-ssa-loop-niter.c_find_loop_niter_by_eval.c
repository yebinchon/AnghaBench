
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct loop {int dummy; } ;
typedef TYPE_1__* edge ;
struct TYPE_6__ {int src; } ;


 scalar_t__ NULL_TREE ;
 scalar_t__ chrec_contains_undetermined (scalar_t__) ;
 scalar_t__ chrec_dont_know ;
 int free (TYPE_1__**) ;
 TYPE_1__** get_loop_exit_edges (struct loop*,unsigned int*) ;
 int just_once_each_iteration_p (struct loop*,int ) ;
 scalar_t__ loop_niter_by_eval (struct loop*,TYPE_1__*) ;
 int tree_int_cst_lt (scalar_t__,scalar_t__) ;

tree
find_loop_niter_by_eval (struct loop *loop, edge *exit)
{
  unsigned n_exits, i;
  edge *exits = get_loop_exit_edges (loop, &n_exits);
  edge ex;
  tree niter = NULL_TREE, aniter;

  *exit = ((void*)0);
  for (i = 0; i < n_exits; i++)
    {
      ex = exits[i];
      if (!just_once_each_iteration_p (loop, ex->src))
 continue;

      aniter = loop_niter_by_eval (loop, ex);
      if (chrec_contains_undetermined (aniter))
 continue;

      if (niter
   && !tree_int_cst_lt (aniter, niter))
 continue;

      niter = aniter;
      *exit = ex;
    }
  free (exits);

  return niter ? niter : chrec_dont_know;
}
