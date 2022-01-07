
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int ssa_op_iter ;


 scalar_t__ NULL_TREE ;
 int clear_and_done_ssa_iter (int *) ;
 int op_iter_done (int *) ;
 scalar_t__ op_iter_init_tree (int *,scalar_t__,int) ;
 scalar_t__ op_iter_next_tree (int *) ;
 scalar_t__ stmt_ann (scalar_t__) ;

__attribute__((used)) static inline bool
compare_ssa_operands_equal (tree stmt1, tree stmt2, int flags)
{
  ssa_op_iter iter1, iter2;
  tree op1 = NULL_TREE;
  tree op2 = NULL_TREE;
  bool look1, look2;

  if (stmt1 == stmt2)
    return 1;

  look1 = stmt1 && stmt_ann (stmt1);
  look2 = stmt2 && stmt_ann (stmt2);

  if (look1)
    {
      op1 = op_iter_init_tree (&iter1, stmt1, flags);
      if (!look2)
        return op_iter_done (&iter1);
    }
  else
    clear_and_done_ssa_iter (&iter1);

  if (look2)
    {
      op2 = op_iter_init_tree (&iter2, stmt2, flags);
      if (!look1)
        return op_iter_done (&iter2);
    }
  else
    clear_and_done_ssa_iter (&iter2);

  while (!op_iter_done (&iter1) && !op_iter_done (&iter2))
    {
      if (op1 != op2)
 return 0;
      op1 = op_iter_next_tree (&iter1);
      op2 = op_iter_next_tree (&iter2);
    }

  return (op_iter_done (&iter1) && op_iter_done (&iter2));
}
