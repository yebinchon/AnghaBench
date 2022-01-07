
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int COMPLETE_OR_VOID_TYPE_P (int ) ;
 scalar_t__ CONVERT_EXPR ;
 int EXACT_DIV_EXPR ;
 scalar_t__ FUNCTION_TYPE ;
 int MINUS_EXPR ;
 scalar_t__ NOP_EXPR ;
 scalar_t__ PLUS_EXPR ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;
 int TREE_TYPE (int ) ;
 scalar_t__ TYPE_PRECISION (int ) ;
 scalar_t__ VOID_TYPE ;
 int build_binary_op (int ,int ,int ,int ) ;
 int c_size_in_bytes (int ) ;
 int convert (int ,int ) ;
 int error (char*) ;
 int fold_build2 (int ,int ,int ,int ) ;
 int integer_zero_node ;
 scalar_t__ operand_equal_p (int ,int ,int ) ;
 scalar_t__ pedantic ;
 int pedwarn (char*) ;
 int ptrdiff_type_node ;
 scalar_t__ warn_pointer_arith ;

__attribute__((used)) static tree
pointer_diff (tree op0, tree op1)
{
  tree restype = ptrdiff_type_node;

  tree target_type = TREE_TYPE (TREE_TYPE (op0));
  tree con0, con1, lit0, lit1;
  tree orig_op1 = op1;

  if (pedantic || warn_pointer_arith)
    {
      if (TREE_CODE (target_type) == VOID_TYPE)
 pedwarn ("pointer of type %<void *%> used in subtraction");
      if (TREE_CODE (target_type) == FUNCTION_TYPE)
 pedwarn ("pointer to a function used in subtraction");
    }
  if ((TREE_CODE (op0) == NOP_EXPR || TREE_CODE (op0) == CONVERT_EXPR)
      && (TYPE_PRECISION (TREE_TYPE (op0))
   == TYPE_PRECISION (TREE_TYPE (TREE_OPERAND (op0, 0)))))
    con0 = TREE_OPERAND (op0, 0);
  else
    con0 = op0;
  if ((TREE_CODE (op1) == NOP_EXPR || TREE_CODE (op1) == CONVERT_EXPR)
      && (TYPE_PRECISION (TREE_TYPE (op1))
   == TYPE_PRECISION (TREE_TYPE (TREE_OPERAND (op1, 0)))))
    con1 = TREE_OPERAND (op1, 0);
  else
    con1 = op1;

  if (TREE_CODE (con0) == PLUS_EXPR)
    {
      lit0 = TREE_OPERAND (con0, 1);
      con0 = TREE_OPERAND (con0, 0);
    }
  else
    lit0 = integer_zero_node;

  if (TREE_CODE (con1) == PLUS_EXPR)
    {
      lit1 = TREE_OPERAND (con1, 1);
      con1 = TREE_OPERAND (con1, 0);
    }
  else
    lit1 = integer_zero_node;

  if (operand_equal_p (con0, con1, 0))
    {
      op0 = lit0;
      op1 = lit1;
    }







  op0 = build_binary_op (MINUS_EXPR, convert (restype, op0),
    convert (restype, op1), 0);

  if (!COMPLETE_OR_VOID_TYPE_P (TREE_TYPE (TREE_TYPE (orig_op1))))
    error ("arithmetic on pointer to an incomplete type");


  op1 = c_size_in_bytes (target_type);


  return fold_build2 (EXACT_DIV_EXPR, restype, op0, convert (restype, op1));
}
