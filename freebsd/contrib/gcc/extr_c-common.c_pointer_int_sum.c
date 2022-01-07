
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;


 scalar_t__ FUNCTION_TYPE ;
 scalar_t__ INTEGER_TYPE ;
 scalar_t__ METHOD_TYPE ;
 scalar_t__ MINUS_EXPR ;
 int MULT_EXPR ;
 scalar_t__ PLUS_EXPR ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ TREE_CONSTANT (int ) ;
 int TREE_OPERAND (int ,int) ;
 int TREE_TYPE (int ) ;
 scalar_t__ TYPE_PRECISION (int ) ;
 scalar_t__ TYPE_UNSIGNED (int ) ;
 scalar_t__ VOID_TYPE ;
 int build_binary_op (int,int ,int ,int) ;
 int c_common_type_for_size (scalar_t__,scalar_t__) ;
 int convert (int ,int ) ;
 int fold_build2 (int,int ,int ,int ) ;
 int fold_defer_overflow_warnings () ;
 int fold_undefer_and_ignore_overflow_warnings () ;
 int integer_one_node ;
 scalar_t__ pedantic ;
 int pedwarn (char*) ;
 int size_in_bytes (int ) ;
 int sizetype ;
 scalar_t__ warn_pointer_arith ;

tree
pointer_int_sum (enum tree_code resultcode, tree ptrop, tree intop)
{
  tree size_exp, ret;



  tree result_type = TREE_TYPE (ptrop);

  if (TREE_CODE (TREE_TYPE (result_type)) == VOID_TYPE)
    {
      if (pedantic || warn_pointer_arith)
 pedwarn ("pointer of type %<void *%> used in arithmetic");
      size_exp = integer_one_node;
    }
  else if (TREE_CODE (TREE_TYPE (result_type)) == FUNCTION_TYPE)
    {
      if (pedantic || warn_pointer_arith)
 pedwarn ("pointer to a function used in arithmetic");
      size_exp = integer_one_node;
    }
  else if (TREE_CODE (TREE_TYPE (result_type)) == METHOD_TYPE)
    {
      if (pedantic || warn_pointer_arith)
 pedwarn ("pointer to member function used in arithmetic");
      size_exp = integer_one_node;
    }
  else
    size_exp = size_in_bytes (TREE_TYPE (result_type));





  fold_defer_overflow_warnings ();






  if ((TREE_CODE (intop) == PLUS_EXPR || TREE_CODE (intop) == MINUS_EXPR)
      && !TREE_CONSTANT (intop)
      && TREE_CONSTANT (TREE_OPERAND (intop, 1))
      && TREE_CONSTANT (size_exp)


      && TREE_CODE (TREE_TYPE (TREE_OPERAND (intop, 0))) == INTEGER_TYPE



      && (!TYPE_UNSIGNED (TREE_TYPE (intop))
   || (TYPE_PRECISION (TREE_TYPE (intop))
       == TYPE_PRECISION (TREE_TYPE (ptrop)))))
    {
      enum tree_code subcode = resultcode;
      tree int_type = TREE_TYPE (intop);
      if (TREE_CODE (intop) == MINUS_EXPR)
 subcode = (subcode == PLUS_EXPR ? MINUS_EXPR : PLUS_EXPR);



      ptrop = build_binary_op (subcode, ptrop,
          convert (int_type, TREE_OPERAND (intop, 1)), 1);
      intop = convert (int_type, TREE_OPERAND (intop, 0));
    }




  if (TYPE_PRECISION (TREE_TYPE (intop)) != TYPE_PRECISION (sizetype)
      || TYPE_UNSIGNED (TREE_TYPE (intop)) != TYPE_UNSIGNED (sizetype))
    intop = convert (c_common_type_for_size (TYPE_PRECISION (sizetype),
          TYPE_UNSIGNED (sizetype)), intop);





  intop = convert (result_type,
     build_binary_op (MULT_EXPR, intop,
        convert (TREE_TYPE (intop), size_exp), 1));


  ret = fold_build2 (resultcode, result_type, ptrop, intop);

  fold_undefer_and_ignore_overflow_warnings ();

  return ret;
}
