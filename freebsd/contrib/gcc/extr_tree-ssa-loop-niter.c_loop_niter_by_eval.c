
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct loop {int num; } ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef TYPE_1__* edge ;
struct TYPE_3__ {int flags; int src; } ;


 scalar_t__ COND_EXPR ;
 scalar_t__ COND_EXPR_COND (scalar_t__) ;
 int EDGE_TRUE_VALUE ;





 unsigned int MAX_ITERATIONS_TO_TRACK ;

 scalar_t__ NULL_TREE ;
 scalar_t__ PHI_ARG_DEF_FROM_EDGE (scalar_t__,int ) ;
 scalar_t__ PHI_NODE ;
 int TDF_DETAILS ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,unsigned int) ;
 int boolean_type_node ;
 scalar_t__ build_int_cst (int ,unsigned int) ;
 scalar_t__ chrec_dont_know ;
 scalar_t__ dump_file ;
 int dump_flags ;
 scalar_t__ fold_binary (int,int ,scalar_t__,scalar_t__) ;
 int fold_defer_overflow_warnings () ;
 int fold_undefer_and_ignore_overflow_warnings () ;
 int fprintf (scalar_t__,char*,int,unsigned int) ;
 scalar_t__ get_base_for (struct loop*,scalar_t__) ;
 scalar_t__ get_val_for (scalar_t__,scalar_t__) ;
 scalar_t__ invert_truthvalue (scalar_t__) ;
 int is_gimple_min_invariant (scalar_t__) ;
 scalar_t__ last_stmt (int ) ;
 int loop_latch_edge (struct loop*) ;
 int loop_preheader_edge (struct loop*) ;
 int unsigned_type_node ;
 scalar_t__ zero_p (scalar_t__) ;

tree
loop_niter_by_eval (struct loop *loop, edge exit)
{
  tree cond, cnd, acnd;
  tree op[2], val[2], next[2], aval[2], phi[2];
  unsigned i, j;
  enum tree_code cmp;

  cond = last_stmt (exit->src);
  if (!cond || TREE_CODE (cond) != COND_EXPR)
    return chrec_dont_know;

  cnd = COND_EXPR_COND (cond);
  if (exit->flags & EDGE_TRUE_VALUE)
    cnd = invert_truthvalue (cnd);

  cmp = TREE_CODE (cnd);
  switch (cmp)
    {
    case 133:
    case 128:
    case 131:
    case 132:
    case 129:
    case 130:
      for (j = 0; j < 2; j++)
 op[j] = TREE_OPERAND (cnd, j);
      break;

    default:
      return chrec_dont_know;
    }

  for (j = 0; j < 2; j++)
    {
      phi[j] = get_base_for (loop, op[j]);
      if (!phi[j])
 return chrec_dont_know;
    }

  for (j = 0; j < 2; j++)
    {
      if (TREE_CODE (phi[j]) == PHI_NODE)
 {
   val[j] = PHI_ARG_DEF_FROM_EDGE (phi[j], loop_preheader_edge (loop));
   next[j] = PHI_ARG_DEF_FROM_EDGE (phi[j], loop_latch_edge (loop));
 }
      else
 {
   val[j] = phi[j];
   next[j] = NULL_TREE;
   op[j] = NULL_TREE;
 }
    }


  fold_defer_overflow_warnings ();

  for (i = 0; i < MAX_ITERATIONS_TO_TRACK; i++)
    {
      for (j = 0; j < 2; j++)
 aval[j] = get_val_for (op[j], val[j]);

      acnd = fold_binary (cmp, boolean_type_node, aval[0], aval[1]);
      if (acnd && zero_p (acnd))
 {
   fold_undefer_and_ignore_overflow_warnings ();
   if (dump_file && (dump_flags & TDF_DETAILS))
     fprintf (dump_file,
       "Proved that loop %d iterates %d times using brute force.\n",
       loop->num, i);
   return build_int_cst (unsigned_type_node, i);
 }

      for (j = 0; j < 2; j++)
 {
   val[j] = get_val_for (next[j], val[j]);
   if (!is_gimple_min_invariant (val[j]))
     {
       fold_undefer_and_ignore_overflow_warnings ();
       return chrec_dont_know;
     }
 }
    }

  fold_undefer_and_ignore_overflow_warnings ();

  return chrec_dont_know;
}
