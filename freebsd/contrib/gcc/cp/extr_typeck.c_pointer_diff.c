
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int COMPLETE_TYPE_P (int ) ;
 int EXACT_DIV_EXPR ;
 scalar_t__ FUNCTION_TYPE ;
 scalar_t__ METHOD_TYPE ;
 int MINUS_EXPR ;
 int NULL_TREE ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 scalar_t__ TYPE_PTROB_P (int ) ;
 scalar_t__ VOID_TYPE ;
 int build2 (int ,int ,int ,int ) ;
 int complete_type_or_else (int ,int ) ;
 int cp_build_binary_op (int ,int ,int ) ;
 int cp_convert (int ,int ) ;
 int error (char*) ;
 int error_mark_node ;
 int fold_if_not_in_template (int ) ;
 int integer_one_node ;
 scalar_t__ pedantic ;
 int pedwarn (char*) ;
 int ptrdiff_type_node ;
 int size_in_bytes (int ) ;
 scalar_t__ warn_pointer_arith ;

__attribute__((used)) static tree
pointer_diff (tree op0, tree op1, tree ptrtype)
{
  tree result;
  tree restype = ptrdiff_type_node;
  tree target_type = TREE_TYPE (ptrtype);

  if (!complete_type_or_else (target_type, NULL_TREE))
    return error_mark_node;

  if (pedantic || warn_pointer_arith)
    {
      if (TREE_CODE (target_type) == VOID_TYPE)
 pedwarn ("ISO C++ forbids using pointer of type %<void *%> in subtraction");
      if (TREE_CODE (target_type) == FUNCTION_TYPE)
 pedwarn ("ISO C++ forbids using pointer to a function in subtraction");
      if (TREE_CODE (target_type) == METHOD_TYPE)
 pedwarn ("ISO C++ forbids using pointer to a method in subtraction");
    }




  op0 = cp_build_binary_op (MINUS_EXPR,
       cp_convert (restype, op0),
       cp_convert (restype, op1));


  if (!COMPLETE_TYPE_P (TREE_TYPE (TREE_TYPE (op1))))
    error ("invalid use of a pointer to an incomplete type in pointer arithmetic");

  op1 = (TYPE_PTROB_P (ptrtype)
  ? size_in_bytes (target_type)
  : integer_one_node);



  result = build2 (EXACT_DIV_EXPR, restype, op0, cp_convert (restype, op1));
  return fold_if_not_in_template (result);
}
