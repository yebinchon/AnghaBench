
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct loop {unsigned int num_nodes; int num; int latch; } ;
typedef int block_stmt_iterator ;
typedef int basic_block ;


 int ARRAY_REF ;

 int CDI_DOMINATORS ;
 int CEIL_DIV_EXPR ;
 int INTEGER_CST ;
 int MINUS_EXPR ;

 int NULL_TREE ;
 int SSA_NAME ;
 int TREE_CHAIN (int ) ;
 int TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;
 int TREE_VALUE (int ) ;
 int TYPE_MAX_VALUE (int ) ;
 int TYPE_MIN_VALUE (int ) ;
 int TYPE_OVERFLOW_WRAPS (int ) ;
 int analyze_scalar_evolution (struct loop*,int ) ;
 int array_ref_contains_indirect_ref (int ) ;
 int boolean_true_node ;
 int bsi_end_p (int ) ;
 int bsi_next (int *) ;
 int bsi_start (int ) ;
 int bsi_stmt (int ) ;
 int chrec_contains_undetermined (int ) ;
 int chrec_type (int ) ;
 int compute_estimated_nb_iterations (struct loop*) ;
 int dominated_by_p (int ,int ,int ) ;
 int estimate_iters_using_array (int ,int ) ;
 int evolution_part_in_loop_num (int ,int ) ;
 int flag_wrapv ;
 int fold_build2 (int ,int ,int ,int ) ;
 int fold_convert (int ,int ) ;
 int free (int *) ;
 int * get_loop_body (struct loop*) ;
 int initial_condition_in_loop_num (int ,int ) ;
 int instantiate_parameters (struct loop*,int ) ;
 int integer_nonzerop (int ) ;
 int integer_zero_node ;
 int record_estimate (struct loop*,int ,int ,int ) ;
 int tree_int_cst_lt (int ,int ) ;
 int unsigned_type_for (int ) ;

__attribute__((used)) static void
infer_loop_bounds_from_undefined (struct loop *loop)
{
  unsigned i;
  basic_block bb, *bbs;
  block_stmt_iterator bsi;

  bbs = get_loop_body (loop);

  for (i = 0; i < loop->num_nodes; i++)
    {
      bb = bbs[i];




      if (!dominated_by_p (CDI_DOMINATORS, loop->latch, bb))
 continue;

      for (bsi = bsi_start (bb); !bsi_end_p (bsi); bsi_next (&bsi))
        {
   tree stmt = bsi_stmt (bsi);

   switch (TREE_CODE (stmt))
     {
     case 128:
       {
  tree op0 = TREE_OPERAND (stmt, 0);
  tree op1 = TREE_OPERAND (stmt, 1);



  if (TREE_CODE (op1) == ARRAY_REF
      && !array_ref_contains_indirect_ref (op1))
    estimate_iters_using_array (stmt, op1);

  if (TREE_CODE (op0) == ARRAY_REF
      && !array_ref_contains_indirect_ref (op0))
    estimate_iters_using_array (stmt, op0);




  else if (!flag_wrapv && TREE_CODE (op0) == SSA_NAME)
    {
      tree init, step, diff, estimation;
      tree scev = instantiate_parameters
        (loop, analyze_scalar_evolution (loop, op0));
      tree type = chrec_type (scev);

      if (chrec_contains_undetermined (scev)
   || TYPE_OVERFLOW_WRAPS (type))
        break;

      init = initial_condition_in_loop_num (scev, loop->num);
      step = evolution_part_in_loop_num (scev, loop->num);

      if (init == NULL_TREE
   || step == NULL_TREE
   || TREE_CODE (init) != INTEGER_CST
   || TREE_CODE (step) != INTEGER_CST
   || TYPE_MIN_VALUE (type) == NULL_TREE
   || TYPE_MAX_VALUE (type) == NULL_TREE)
        break;

      if (integer_nonzerop (step))
        {
   tree utype;

   if (tree_int_cst_lt (step, integer_zero_node))
     diff = fold_build2 (MINUS_EXPR, type, init,
           TYPE_MIN_VALUE (type));
   else
     diff = fold_build2 (MINUS_EXPR, type,
           TYPE_MAX_VALUE (type), init);

   utype = unsigned_type_for (type);
   estimation = fold_build2 (CEIL_DIV_EXPR, type, diff,
        step);
   record_estimate (loop,
      fold_convert (utype, estimation),
      boolean_true_node, stmt);
        }
    }

  break;
       }

     case 129:
       {
  tree args;

  for (args = TREE_OPERAND (stmt, 1); args;
       args = TREE_CHAIN (args))
    if (TREE_CODE (TREE_VALUE (args)) == ARRAY_REF
        && !array_ref_contains_indirect_ref (TREE_VALUE (args)))
      estimate_iters_using_array (stmt, TREE_VALUE (args));

  break;
       }

     default:
       break;
     }
 }
    }

  compute_estimated_nb_iterations (loop);
  free (bbs);
}
