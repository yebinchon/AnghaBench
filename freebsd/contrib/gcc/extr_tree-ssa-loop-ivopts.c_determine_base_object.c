
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;



 scalar_t__ CONVERT_EXPR ;
 scalar_t__ INDIRECT_REF ;


 int NEGATE_EXPR ;
 scalar_t__ NOP_EXPR ;
 int NULL_TREE ;

 int POINTER_TYPE_P (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;
 int TREE_TYPE (int ) ;
 int build_fold_addr_expr (int ) ;
 int fold_build1 (int ,int ,int ) ;
 int fold_build2 (int,int ,int ,int ) ;
 int fold_convert (int ,int ) ;
 int get_base_address (int ) ;
 int ptr_type_node ;

__attribute__((used)) static tree
determine_base_object (tree expr)
{
  enum tree_code code = TREE_CODE (expr);
  tree base, obj, op0, op1;




  if (TREE_CODE (expr) == NOP_EXPR
      || TREE_CODE (expr) == CONVERT_EXPR)
    return determine_base_object (TREE_OPERAND (expr, 0));

  if (!POINTER_TYPE_P (TREE_TYPE (expr)))
    return NULL_TREE;

  switch (code)
    {
    case 130:
      return NULL_TREE;

    case 131:
      obj = TREE_OPERAND (expr, 0);
      base = get_base_address (obj);

      if (!base)
 return expr;

      if (TREE_CODE (base) == INDIRECT_REF)
 return determine_base_object (TREE_OPERAND (base, 0));

      return fold_convert (ptr_type_node,
             build_fold_addr_expr (base));

    case 128:
    case 129:
      op0 = determine_base_object (TREE_OPERAND (expr, 0));
      op1 = determine_base_object (TREE_OPERAND (expr, 1));

      if (!op1)
 return op0;

      if (!op0)
 return (code == 128
  ? op1
  : fold_build1 (NEGATE_EXPR, ptr_type_node, op1));

      return fold_build2 (code, ptr_type_node, op0, op1);

    default:
      return fold_convert (ptr_type_node, expr);
    }
}
