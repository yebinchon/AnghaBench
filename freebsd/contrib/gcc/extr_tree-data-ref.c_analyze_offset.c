
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;


 scalar_t__ INTEGER_CST ;
 int MINUS_EXPR ;
 int NEGATE_EXPR ;
 int NULL_TREE ;
 int PLUS_EXPR ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;
 int TREE_TYPE (int ) ;
 int fold_build1 (int ,int ,int ) ;
 int fold_build2 (int,int ,int ,int ) ;

__attribute__((used)) static bool
analyze_offset (tree offset, tree *invariant, tree *constant)
{
  tree op0, op1, constant_0, constant_1, invariant_0, invariant_1;
  enum tree_code code = TREE_CODE (offset);

  *invariant = NULL_TREE;
  *constant = NULL_TREE;


  if (code != PLUS_EXPR && code != MINUS_EXPR)
    {
      if (TREE_CODE (offset) == INTEGER_CST)
 *constant = offset;
      else
 *invariant = offset;
      return 1;
    }

  op0 = TREE_OPERAND (offset, 0);
  op1 = TREE_OPERAND (offset, 1);


  if (!analyze_offset (op0, &invariant_0, &constant_0)
      || !analyze_offset (op1, &invariant_1, &constant_1))
    return 0;



  if (constant_0 && constant_1)
    return 0;
  *constant = constant_0 ? constant_0 : constant_1;
  if (code == MINUS_EXPR && constant_1)
    *constant = fold_build1 (NEGATE_EXPR, TREE_TYPE (*constant), *constant);

  if (invariant_0 && invariant_1)
    *invariant =
      fold_build2 (code, TREE_TYPE (invariant_0), invariant_0, invariant_1);
  else
    {
      *invariant = invariant_0 ? invariant_0 : invariant_1;
      if (code == MINUS_EXPR && invariant_1)
        *invariant =
           fold_build1 (NEGATE_EXPR, TREE_TYPE (*invariant), *invariant);
    }
  return 1;
}
