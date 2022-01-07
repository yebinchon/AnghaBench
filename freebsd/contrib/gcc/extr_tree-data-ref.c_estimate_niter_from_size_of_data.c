
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
struct loop {int num; } ;


 int CEIL_DIV_EXPR ;
 int EXACT_DIV_EXPR ;
 int GT_EXPR ;
 scalar_t__ INTEGER_CST ;
 int MINUS_EXPR ;
 scalar_t__ NULL_TREE ;
 int PLUS_EXPR ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPE_SIZE (scalar_t__) ;
 scalar_t__ boolean_false_node ;
 scalar_t__ boolean_true_node ;
 int boolean_type_node ;
 scalar_t__ evolution_part_in_loop_num (scalar_t__,int ) ;
 scalar_t__ fold_binary (int ,int ,scalar_t__,scalar_t__) ;
 scalar_t__ fold_build2 (int ,int ,scalar_t__,scalar_t__) ;
 scalar_t__ initial_condition (scalar_t__) ;
 scalar_t__ integer_one_node ;
 int integer_type_node ;
 scalar_t__ integer_zero_node ;
 int record_estimate (struct loop*,scalar_t__,scalar_t__,scalar_t__) ;
 int unsigned_type_node ;

__attribute__((used)) static void
estimate_niter_from_size_of_data (struct loop *loop,
      tree opnd0,
      tree access_fn,
      tree stmt)
{
  tree estimation = NULL_TREE;
  tree array_size, data_size, element_size;
  tree init, step;

  init = initial_condition (access_fn);
  step = evolution_part_in_loop_num (access_fn, loop->num);

  array_size = TYPE_SIZE (TREE_TYPE (opnd0));
  element_size = TYPE_SIZE (TREE_TYPE (TREE_TYPE (opnd0)));
  if (array_size == NULL_TREE
      || TREE_CODE (array_size) != INTEGER_CST
      || TREE_CODE (element_size) != INTEGER_CST)
    return;

  data_size = fold_build2 (EXACT_DIV_EXPR, integer_type_node,
      array_size, element_size);

  if (init != NULL_TREE
      && step != NULL_TREE
      && TREE_CODE (init) == INTEGER_CST
      && TREE_CODE (step) == INTEGER_CST)
    {
      tree i_plus_s = fold_build2 (PLUS_EXPR, integer_type_node, init, step);
      tree sign = fold_binary (GT_EXPR, boolean_type_node, i_plus_s, init);

      if (sign == boolean_true_node)
 estimation = fold_build2 (CEIL_DIV_EXPR, integer_type_node,
      fold_build2 (MINUS_EXPR, integer_type_node,
            data_size, init), step);




      else if (sign == boolean_false_node)
 estimation =
   fold_build2 (PLUS_EXPR, integer_type_node,
         fold_build2 (CEIL_DIV_EXPR, integer_type_node,
        init,
        fold_build2 (MINUS_EXPR, unsigned_type_node,
       integer_zero_node, step)),
         integer_one_node);

      if (estimation)
 record_estimate (loop, estimation, boolean_true_node, stmt);
    }
}
