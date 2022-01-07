
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;



 int BITS_PER_UNIT ;



 int DECL_C_BIT_FIELD (scalar_t__) ;
 int DECL_FIELD_BIT_OFFSET (scalar_t__) ;
 scalar_t__ DECL_FIELD_OFFSET (scalar_t__) ;



 int MINUS_EXPR ;
 int MULT_EXPR ;
 int NEGATE_EXPR ;

 int PLUS_EXPR ;
 int const TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int) ;
 int TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPE_SIZE_UNIT (int ) ;

 scalar_t__ convert (int ,scalar_t__) ;
 int error (char*,...) ;
 scalar_t__ error_mark_node ;
 scalar_t__ fold_build1 (int ,int ,scalar_t__) ;
 int gcc_assert (int) ;
 int gcc_unreachable () ;
 int integer_zerop (scalar_t__) ;
 scalar_t__ size_binop (int,scalar_t__,scalar_t__) ;
 scalar_t__ size_int (int) ;
 scalar_t__ size_zero_node ;
 int sizetype ;
 int tree_int_cst_sgn (scalar_t__) ;
 int tree_low_cst (int ,int) ;

__attribute__((used)) static tree
fold_offsetof_1 (tree expr, tree stop_ref)
{
  enum tree_code code = PLUS_EXPR;
  tree base, off, t;

  if (expr == stop_ref && TREE_CODE (expr) != 132)
    return size_zero_node;

  switch (TREE_CODE (expr))
    {
    case 132:
      return expr;

    case 128:
      error ("cannot apply %<offsetof%> to static data member %qD", expr);
      return error_mark_node;

    case 135:
      error ("cannot apply %<offsetof%> when %<operator[]%> is overloaded");
      return error_mark_node;

    case 130:
      gcc_assert (integer_zerop (expr));
      return size_zero_node;

    case 129:
    case 131:
      base = fold_offsetof_1 (TREE_OPERAND (expr, 0), stop_ref);
      gcc_assert (base == error_mark_node || base == size_zero_node);
      return base;

    case 134:
      base = fold_offsetof_1 (TREE_OPERAND (expr, 0), stop_ref);
      if (base == error_mark_node)
 return base;

      t = TREE_OPERAND (expr, 1);
      if (DECL_C_BIT_FIELD (t))
 {
   error ("attempt to take address of bit-field structure "
   "member %qD", t);
   return error_mark_node;
 }
      off = size_binop (PLUS_EXPR, DECL_FIELD_OFFSET (t),
   size_int (tree_low_cst (DECL_FIELD_BIT_OFFSET (t), 1)
      / BITS_PER_UNIT));
      break;

    case 136:
      base = fold_offsetof_1 (TREE_OPERAND (expr, 0), stop_ref);
      if (base == error_mark_node)
 return base;

      t = TREE_OPERAND (expr, 1);
      if (TREE_CODE (t) == 130 && tree_int_cst_sgn (t) < 0)
 {
   code = MINUS_EXPR;
   t = fold_build1 (NEGATE_EXPR, TREE_TYPE (t), t);
 }
      t = convert (sizetype, t);
      off = size_binop (MULT_EXPR, TYPE_SIZE_UNIT (TREE_TYPE (expr)), t);
      break;

    case 133:

      t = TREE_OPERAND (expr, 1);
      gcc_assert (TREE_CODE (t) == 128);
      return fold_offsetof_1 (t, stop_ref);

    default:
      gcc_unreachable ();
    }

  return size_binop (code, base, off);
}
