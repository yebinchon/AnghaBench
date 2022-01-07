
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef enum built_in_function { ____Placeholder_built_in_function } built_in_function ;
struct TYPE_3__ {scalar_t__ (* global_bindings_p ) () ;} ;
struct TYPE_4__ {TYPE_1__ decls; } ;
typedef int REAL_VALUE_TYPE ;


 scalar_t__ BUILTIN_SQRT_P (int) ;
 scalar_t__ CONTAINS_PLACEHOLDER_P (int ) ;
 int EQ_EXPR ;
 int GE_EXPR ;
 int GT_EXPR ;
 scalar_t__ HONOR_INFINITIES (int) ;
 int HONOR_NANS (int) ;
 int LE_EXPR ;
 int LT_EXPR ;
 int MULT_EXPR ;
 int NE_EXPR ;
 int NULL_TREE ;
 int REAL_ARITHMETIC (int ,int ,int ,int ) ;
 scalar_t__ REAL_VALUE_ISINF (int ) ;
 scalar_t__ REAL_VALUE_NEGATIVE (int ) ;
 int TREE_OPERAND (int ,int) ;
 int TREE_REAL_CST (int ) ;
 int TREE_TYPE (int ) ;
 int TREE_VALUE (int ) ;
 int TRUTH_ANDIF_EXPR ;
 int TYPE_MODE (int ) ;
 int build_real (int ,int ) ;
 int dconst0 ;
 int fold_build2 (int,int ,int ,int ) ;
 int integer_one_node ;
 int integer_zero_node ;
 TYPE_2__ lang_hooks ;
 int omit_one_operand (int ,int ,int ) ;
 int real_convert (int *,int,int *) ;
 int save_expr (int ) ;
 scalar_t__ stub1 () ;
 scalar_t__ stub2 () ;

__attribute__((used)) static tree
fold_mathfn_compare (enum built_in_function fcode, enum tree_code code,
       tree type, tree arg0, tree arg1)
{
  REAL_VALUE_TYPE c;

  if (BUILTIN_SQRT_P (fcode))
    {
      tree arg = TREE_VALUE (TREE_OPERAND (arg0, 1));
      enum machine_mode mode = TYPE_MODE (TREE_TYPE (arg0));

      c = TREE_REAL_CST (arg1);
      if (REAL_VALUE_NEGATIVE (c))
 {

   if (code == EQ_EXPR || code == LT_EXPR || code == LE_EXPR)
     return omit_one_operand (type, integer_zero_node, arg);



   if (code == NE_EXPR || !HONOR_NANS (mode))
     return omit_one_operand (type, integer_one_node, arg);


   return fold_build2 (GE_EXPR, type, arg,
         build_real (TREE_TYPE (arg), dconst0));
 }
      else if (code == GT_EXPR || code == GE_EXPR)
 {
   REAL_VALUE_TYPE c2;

   REAL_ARITHMETIC (c2, MULT_EXPR, c, c);
   real_convert (&c2, mode, &c2);

   if (REAL_VALUE_ISINF (c2))
     {

       if (HONOR_INFINITIES (mode))
  return fold_build2 (EQ_EXPR, type, arg,
        build_real (TREE_TYPE (arg), c2));



       return omit_one_operand (type, integer_zero_node, arg);
     }


   return fold_build2 (code, type, arg,
         build_real (TREE_TYPE (arg), c2));
 }
      else if (code == LT_EXPR || code == LE_EXPR)
 {
   REAL_VALUE_TYPE c2;

   REAL_ARITHMETIC (c2, MULT_EXPR, c, c);
   real_convert (&c2, mode, &c2);

   if (REAL_VALUE_ISINF (c2))
     {


       if (! HONOR_NANS (mode) && ! HONOR_INFINITIES (mode))
  return omit_one_operand (type, integer_one_node, arg);



       if (! HONOR_NANS (mode))
  return fold_build2 (NE_EXPR, type, arg,
        build_real (TREE_TYPE (arg), c2));



       if (! HONOR_INFINITIES (mode))
  return fold_build2 (GE_EXPR, type, arg,
        build_real (TREE_TYPE (arg), dconst0));


       if (lang_hooks.decls.global_bindings_p () != 0
    || CONTAINS_PLACEHOLDER_P (arg))
  return NULL_TREE;

       arg = save_expr (arg);
       return fold_build2 (TRUTH_ANDIF_EXPR, type,
      fold_build2 (GE_EXPR, type, arg,
            build_real (TREE_TYPE (arg),
          dconst0)),
      fold_build2 (NE_EXPR, type, arg,
            build_real (TREE_TYPE (arg),
          c2)));
     }


   if (! HONOR_NANS (mode))
     return fold_build2 (code, type, arg,
    build_real (TREE_TYPE (arg), c2));


   if (lang_hooks.decls.global_bindings_p () == 0
       && ! CONTAINS_PLACEHOLDER_P (arg))
     {
       arg = save_expr (arg);
       return fold_build2 (TRUTH_ANDIF_EXPR, type,
      fold_build2 (GE_EXPR, type, arg,
            build_real (TREE_TYPE (arg),
          dconst0)),
      fold_build2 (code, type, arg,
            build_real (TREE_TYPE (arg),
          c2)));
     }
 }
    }

  return NULL_TREE;
}
