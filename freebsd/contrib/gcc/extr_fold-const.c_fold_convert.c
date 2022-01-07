
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_2__ {scalar_t__ (* types_compatible_p ) (scalar_t__,scalar_t__) ;} ;




 int const COMPLEX_EXPR ;


 scalar_t__ ERROR_MARK ;
 int FLOAT_EXPR ;
 int IMAGPART_EXPR ;
 int const INTEGER_CST ;

 int INTEGRAL_TYPE_P (scalar_t__) ;
 int NOP_EXPR ;
 scalar_t__ NULL_TREE ;


 int POINTER_TYPE_P (scalar_t__) ;
 int REALPART_EXPR ;
 int const REAL_CST ;


 int const TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPE_MAIN_VARIANT (scalar_t__) ;
 int TYPE_SIZE (scalar_t__) ;

 int VIEW_CONVERT_EXPR ;

 scalar_t__ build2 (int const,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ build_zero_vector (scalar_t__) ;
 scalar_t__ error_mark_node ;
 scalar_t__ fold_build1 (int ,scalar_t__,scalar_t__) ;
 scalar_t__ fold_build2 (int const,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ fold_convert_const (int ,scalar_t__,scalar_t__) ;
 scalar_t__ fold_ignored_result (scalar_t__) ;
 int gcc_assert (int) ;
 int gcc_unreachable () ;
 scalar_t__ integer_zero_node ;
 int integer_zerop (scalar_t__) ;
 TYPE_1__ lang_hooks ;
 scalar_t__ save_expr (scalar_t__) ;
 scalar_t__ stub1 (scalar_t__,scalar_t__) ;
 int tree_int_cst_equal (int ,int ) ;

tree
fold_convert (tree type, tree arg)
{
  tree orig = TREE_TYPE (arg);
  tree tem;

  if (type == orig)
    return arg;

  if (TREE_CODE (arg) == ERROR_MARK
      || TREE_CODE (type) == ERROR_MARK
      || TREE_CODE (orig) == ERROR_MARK)
    return error_mark_node;

  if (TYPE_MAIN_VARIANT (type) == TYPE_MAIN_VARIANT (orig)
      || lang_hooks.types_compatible_p (TYPE_MAIN_VARIANT (type),
     TYPE_MAIN_VARIANT (orig)))
    return fold_build1 (NOP_EXPR, type, arg);

  switch (TREE_CODE (type))
    {
    case 134: case 135: case 137:
    case 132: case 130:

    case 138:
    case 133:
      if (TREE_CODE (arg) == INTEGER_CST)
 {
   tem = fold_convert_const (NOP_EXPR, type, arg);
   if (tem != NULL_TREE)
     return tem;
 }
      if (INTEGRAL_TYPE_P (orig) || POINTER_TYPE_P (orig)
   || TREE_CODE (orig) == 133)
        return fold_build1 (NOP_EXPR, type, arg);
      if (TREE_CODE (orig) == 136)
 {
   tem = fold_build1 (REALPART_EXPR, TREE_TYPE (orig), arg);
   return fold_convert (type, tem);
 }
      gcc_assert (TREE_CODE (orig) == 129
    && tree_int_cst_equal (TYPE_SIZE (type), TYPE_SIZE (orig)));
      return fold_build1 (NOP_EXPR, type, arg);

    case 131:
      if (TREE_CODE (arg) == INTEGER_CST)
 {
   tem = fold_convert_const (FLOAT_EXPR, type, arg);
   if (tem != NULL_TREE)
     return tem;
 }
      else if (TREE_CODE (arg) == REAL_CST)
 {
   tem = fold_convert_const (NOP_EXPR, type, arg);
   if (tem != NULL_TREE)
     return tem;
 }

      switch (TREE_CODE (orig))
 {
 case 134:
 case 137: case 135:
 case 132: case 130:
   return fold_build1 (FLOAT_EXPR, type, arg);

 case 131:
   return fold_build1 (NOP_EXPR, type, arg);

 case 136:
   tem = fold_build1 (REALPART_EXPR, TREE_TYPE (orig), arg);
   return fold_convert (type, tem);

 default:
   gcc_unreachable ();
 }

    case 136:
      switch (TREE_CODE (orig))
 {
 case 134:
 case 137: case 135:
 case 132: case 130:
 case 131:
   return build2 (COMPLEX_EXPR, type,
    fold_convert (TREE_TYPE (type), arg),
    fold_convert (TREE_TYPE (type), integer_zero_node));
 case 136:
   {
     tree rpart, ipart;

     if (TREE_CODE (arg) == COMPLEX_EXPR)
       {
  rpart = fold_convert (TREE_TYPE (type), TREE_OPERAND (arg, 0));
  ipart = fold_convert (TREE_TYPE (type), TREE_OPERAND (arg, 1));
  return fold_build2 (COMPLEX_EXPR, type, rpart, ipart);
       }

     arg = save_expr (arg);
     rpart = fold_build1 (REALPART_EXPR, TREE_TYPE (orig), arg);
     ipart = fold_build1 (IMAGPART_EXPR, TREE_TYPE (orig), arg);
     rpart = fold_convert (TREE_TYPE (type), rpart);
     ipart = fold_convert (TREE_TYPE (type), ipart);
     return fold_build2 (COMPLEX_EXPR, type, rpart, ipart);
   }

 default:
   gcc_unreachable ();
 }

    case 129:
      if (integer_zerop (arg))
 return build_zero_vector (type);
      gcc_assert (tree_int_cst_equal (TYPE_SIZE (type), TYPE_SIZE (orig)));
      gcc_assert (INTEGRAL_TYPE_P (orig) || POINTER_TYPE_P (orig)
    || TREE_CODE (orig) == 129);
      return fold_build1 (VIEW_CONVERT_EXPR, type, arg);

    case 128:
      return fold_build1 (NOP_EXPR, type, fold_ignored_result (arg));

    default:
      gcc_unreachable ();
    }
}
