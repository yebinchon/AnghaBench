
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;



 int BITS_PER_UNIT ;


 int DECL_FIELD_BIT_OFFSET (scalar_t__) ;
 scalar_t__ DECL_FIELD_OFFSET (scalar_t__) ;

 int INTEGER_CST ;
 int MINUS_EXPR ;
 int MULT_EXPR ;
 int NEGATE_EXPR ;


 int PLUS_EXPR ;

 int TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int) ;
 int TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPE_SIZE_UNIT (int ) ;

 scalar_t__ error_mark_node ;
 scalar_t__ fold_build1 (int ,int ,scalar_t__) ;
 scalar_t__ fold_convert (int ,scalar_t__) ;
 scalar_t__ size_binop (int,scalar_t__,scalar_t__) ;
 scalar_t__ size_int (int) ;
 scalar_t__ size_zero_node ;
 int sizetype ;
 int tree_int_cst_sgn (scalar_t__) ;
 int tree_low_cst (int ,int) ;

__attribute__((used)) static tree
compute_object_offset (tree expr, tree var)
{
  enum tree_code code = PLUS_EXPR;
  tree base, off, t;

  if (expr == var)
    return size_zero_node;

  switch (TREE_CODE (expr))
    {
    case 134:
      base = compute_object_offset (TREE_OPERAND (expr, 0), var);
      if (base == error_mark_node)
 return base;

      t = TREE_OPERAND (expr, 1);
      off = size_binop (PLUS_EXPR, DECL_FIELD_OFFSET (t),
   size_int (tree_low_cst (DECL_FIELD_BIT_OFFSET (t), 1)
      / BITS_PER_UNIT));
      break;

    case 129:
    case 130:
    case 133:
    case 128:
    case 131:
      return compute_object_offset (TREE_OPERAND (expr, 0), var);

    case 132:
      base = compute_object_offset (TREE_OPERAND (expr, 0), var);
      if (base == error_mark_node)
 return base;

      off = TYPE_SIZE_UNIT (TREE_TYPE (expr));
      break;

    case 135:
      base = compute_object_offset (TREE_OPERAND (expr, 0), var);
      if (base == error_mark_node)
 return base;

      t = TREE_OPERAND (expr, 1);
      if (TREE_CODE (t) == INTEGER_CST && tree_int_cst_sgn (t) < 0)
 {
   code = MINUS_EXPR;
   t = fold_build1 (NEGATE_EXPR, TREE_TYPE (t), t);
 }
      t = fold_convert (sizetype, t);
      off = size_binop (MULT_EXPR, TYPE_SIZE_UNIT (TREE_TYPE (expr)), t);
      break;

    default:
      return error_mark_node;
    }

  return size_binop (code, base, off);
}
