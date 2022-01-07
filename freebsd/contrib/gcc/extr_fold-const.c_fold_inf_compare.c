
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_3__ {int (* global_bindings_p ) () ;} ;
struct TYPE_4__ {TYPE_1__ decls; } ;
typedef int REAL_VALUE_TYPE ;


 int CONTAINS_PLACEHOLDER_P (int ) ;



 int HONOR_NANS (int) ;
 int HONOR_SNANS (int) ;



 int NULL_TREE ;
 int REAL_VALUE_NEGATIVE (int ) ;
 int TREE_REAL_CST (int ) ;
 int TREE_TYPE (int ) ;
 int TRUTH_NOT_EXPR ;
 int TYPE_MODE (int ) ;
 int build_real (int ,int ) ;
 int fold_build1 (int ,int ,int ) ;
 int fold_build2 (int const,int ,int ,int ) ;
 int in_gimple_form ;
 int integer_one_node ;
 int integer_zero_node ;
 TYPE_2__ lang_hooks ;
 int omit_one_operand (int ,int ,int ) ;
 int real_maxval (int *,int,int) ;
 int save_expr (int ) ;
 int stub1 () ;
 int swap_tree_comparison (int) ;

__attribute__((used)) static tree
fold_inf_compare (enum tree_code code, tree type, tree arg0, tree arg1)
{
  enum machine_mode mode;
  REAL_VALUE_TYPE max;
  tree temp;
  bool neg;

  mode = TYPE_MODE (TREE_TYPE (arg0));


  neg = REAL_VALUE_NEGATIVE (TREE_REAL_CST (arg1));
  if (neg)
    code = swap_tree_comparison (code);

  switch (code)
    {
    case 131:

      if (HONOR_SNANS (mode))
        return NULL_TREE;
      return omit_one_operand (type, integer_zero_node, arg0);

    case 130:

      if (! HONOR_NANS (mode))
 return omit_one_operand (type, integer_one_node, arg0);


      if (lang_hooks.decls.global_bindings_p () == 0
   && ! CONTAINS_PLACEHOLDER_P (arg0))
 {
   arg0 = save_expr (arg0);
   return fold_build2 (133, type, arg0, arg0);
 }
      break;

    case 133:
    case 132:

      real_maxval (&max, neg, mode);
      return fold_build2 (neg ? 129 : 131, type,
     arg0, build_real (TREE_TYPE (arg0), max));

    case 129:

      real_maxval (&max, neg, mode);
      return fold_build2 (neg ? 132 : 130, type,
     arg0, build_real (TREE_TYPE (arg0), max));

    case 128:

      real_maxval (&max, neg, mode);
      if (! HONOR_NANS (mode))
 return fold_build2 (neg ? 132 : 130, type,
       arg0, build_real (TREE_TYPE (arg0), max));



      if (in_gimple_form)
 return NULL_TREE;

      temp = fold_build2 (neg ? 129 : 131, type,
     arg0, build_real (TREE_TYPE (arg0), max));
      return fold_build1 (TRUTH_NOT_EXPR, type, temp);

    default:
      break;
    }

  return NULL_TREE;
}
