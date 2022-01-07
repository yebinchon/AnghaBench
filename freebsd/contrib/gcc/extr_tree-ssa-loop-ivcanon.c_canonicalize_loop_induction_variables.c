
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int tree ;
struct loops {int dummy; } ;
struct loop {int num; TYPE_1__* single_exit; } ;
typedef enum unroll_level { ____Placeholder_unroll_level } unroll_level ;
typedef TYPE_1__* edge ;
struct TYPE_6__ {int src; } ;


 scalar_t__ INTEGER_CST ;
 int MINUS_EXPR ;
 int TDF_DETAILS ;
 int TDF_SLIM ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 int build_int_cst (int ,int) ;
 scalar_t__ chrec_contains_undetermined (int ) ;
 int create_canonical_iv (struct loop*,TYPE_1__*,int ) ;
 scalar_t__ dump_file ;
 int dump_flags ;
 int find_loop_niter (struct loop*,TYPE_1__**) ;
 int find_loop_niter_by_eval (struct loop*,TYPE_1__**) ;
 int fold_build2 (int ,int ,int ,int ) ;
 int fprintf (scalar_t__,char*,...) ;
 int just_once_each_iteration_p (struct loop*,int ) ;
 int number_of_iterations_in_loop (struct loop*) ;
 int print_generic_expr (scalar_t__,int ,int ) ;
 scalar_t__ try_unroll_loop_completely (struct loops*,struct loop*,TYPE_1__*,int ,int) ;

__attribute__((used)) static bool
canonicalize_loop_induction_variables (struct loops *loops, struct loop *loop,
           bool create_iv, enum unroll_level ul,
           bool try_eval)
{
  edge exit = ((void*)0);
  tree niter;

  niter = number_of_iterations_in_loop (loop);
  if (TREE_CODE (niter) == INTEGER_CST)
    {
      exit = loop->single_exit;
      if (!just_once_each_iteration_p (loop, exit->src))
 return 0;




      niter = fold_build2 (MINUS_EXPR, TREE_TYPE (niter), niter,
      build_int_cst (TREE_TYPE (niter), 1));
    }
  else
    {


      if (!loop->single_exit)
 niter = find_loop_niter (loop, &exit);


      if (try_eval
   && (chrec_contains_undetermined (niter)
       || TREE_CODE (niter) != INTEGER_CST))
 niter = find_loop_niter_by_eval (loop, &exit);

      if (chrec_contains_undetermined (niter)
   || TREE_CODE (niter) != INTEGER_CST)
 return 0;
    }

  if (dump_file && (dump_flags & TDF_DETAILS))
    {
      fprintf (dump_file, "Loop %d iterates ", loop->num);
      print_generic_expr (dump_file, niter, TDF_SLIM);
      fprintf (dump_file, " times.\n");
    }

  if (try_unroll_loop_completely (loops, loop, exit, niter, ul))
    return 1;

  if (create_iv)
    create_canonical_iv (loop, exit, niter);

  return 0;
}
