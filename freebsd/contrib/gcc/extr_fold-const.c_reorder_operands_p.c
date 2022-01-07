
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ TREE_CONSTANT (int ) ;
 int TREE_SIDE_EFFECTS (int ) ;
 int flag_evaluation_order ;

__attribute__((used)) static bool
reorder_operands_p (tree arg0, tree arg1)
{
  if (! flag_evaluation_order)
      return 1;
  if (TREE_CONSTANT (arg0) || TREE_CONSTANT (arg1))
    return 1;
  return ! TREE_SIDE_EFFECTS (arg0)
  && ! TREE_SIDE_EFFECTS (arg1);
}
