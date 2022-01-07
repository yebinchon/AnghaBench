
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int tree ;
struct tree_niter_desc {int additional_info; int may_be_zero; int niter; } ;
struct loop {scalar_t__ estimated_nb_iterations; } ;
typedef TYPE_1__* edge ;
struct TYPE_5__ {int src; } ;


 int COND_EXPR ;
 scalar_t__ INTEGER_CST ;
 scalar_t__ NULL_TREE ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 int TREE_TYPE (int ) ;
 int build3 (int ,int ,int ,int ,int ) ;
 int build_int_cst (int ,int ) ;
 scalar_t__ chrec_contains_undetermined (scalar_t__) ;
 scalar_t__ chrec_dont_know ;
 int free (TYPE_1__**) ;
 TYPE_1__** get_loop_exit_edges (struct loop*,unsigned int*) ;
 int infer_loop_bounds_from_undefined (struct loop*) ;
 int last_stmt (int ) ;
 int nonzero_p (int ) ;
 int number_of_iterations_exit (struct loop*,TYPE_1__*,struct tree_niter_desc*,int) ;
 int record_estimate (struct loop*,int ,int ,int ) ;
 int zero_p (int ) ;

__attribute__((used)) static void
estimate_numbers_of_iterations_loop (struct loop *loop)
{
  edge *exits;
  tree niter, type;
  unsigned i, n_exits;
  struct tree_niter_desc niter_desc;


  if (loop->estimated_nb_iterations == chrec_dont_know

      || (loop->estimated_nb_iterations != NULL_TREE
   && TREE_CODE (loop->estimated_nb_iterations) == INTEGER_CST))
    return;
  else
    loop->estimated_nb_iterations = chrec_dont_know;

  exits = get_loop_exit_edges (loop, &n_exits);
  for (i = 0; i < n_exits; i++)
    {
      if (!number_of_iterations_exit (loop, exits[i], &niter_desc, 0))
 continue;

      niter = niter_desc.niter;
      type = TREE_TYPE (niter);
      if (!zero_p (niter_desc.may_be_zero)
   && !nonzero_p (niter_desc.may_be_zero))
 niter = build3 (COND_EXPR, type, niter_desc.may_be_zero,
   build_int_cst (type, 0),
   niter);
      record_estimate (loop, niter,
         niter_desc.additional_info,
         last_stmt (exits[i]->src));
    }
  free (exits);

  if (chrec_contains_undetermined (loop->estimated_nb_iterations))
    infer_loop_bounds_from_undefined (loop);
}
