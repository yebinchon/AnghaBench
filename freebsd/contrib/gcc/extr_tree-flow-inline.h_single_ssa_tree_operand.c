
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int ssa_op_iter ;


 int NULL_TREE ;
 scalar_t__ op_iter_done (int *) ;
 int op_iter_init_tree (int *,int ,int) ;
 int op_iter_next_tree (int *) ;

__attribute__((used)) static inline tree
single_ssa_tree_operand (tree stmt, int flags)
{
  tree var;
  ssa_op_iter iter;

  var = op_iter_init_tree (&iter, stmt, flags);
  if (op_iter_done (&iter))
    return NULL_TREE;
  op_iter_next_tree (&iter);
  if (op_iter_done (&iter))
    return var;
  return NULL_TREE;
}
