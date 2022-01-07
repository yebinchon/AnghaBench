
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;



 int const BOOLEAN_TYPE ;




 int EQ_EXPR ;
 int ERROR_MARK ;

 scalar_t__ FLOAT_TYPE_P (int ) ;
 int HONOR_NANS (int ) ;

 int NE_EXPR ;


 int NULL_TREE ;
 int ORDERED_EXPR ;

 int const TREE_CODE (int ) ;
 scalar_t__ TREE_CODE_CLASS (int) ;
 int TREE_OPERAND (int ,int) ;
 int TREE_TYPE (int ) ;






 int TYPE_MODE (int ) ;
 int UNORDERED_EXPR ;
 int VOID_TYPE_P (int ) ;
 int build1 (int const,int ,int ) ;
 int build2 (int const,int ,int ,int ) ;
 int build3 (int const,int ,int ,int ,int ) ;
 int build_int_cst (int ,int ) ;
 int constant_boolean_node (int ,int ) ;
 scalar_t__ flag_trapping_math ;
 int integer_onep (int ) ;
 int integer_zerop (int ) ;
 int invert_tree_comparison (int,int ) ;
 int invert_truthvalue (int ) ;
 scalar_t__ tcc_comparison ;

tree
fold_truth_not_expr (tree arg)
{
  tree type = TREE_TYPE (arg);
  enum tree_code code = TREE_CODE (arg);





  if (TREE_CODE_CLASS (code) == tcc_comparison)
    {
      tree op_type = TREE_TYPE (TREE_OPERAND (arg, 0));
      if (FLOAT_TYPE_P (op_type)
   && flag_trapping_math
   && code != ORDERED_EXPR && code != UNORDERED_EXPR
   && code != NE_EXPR && code != EQ_EXPR)
 return NULL_TREE;
      else
 {
   code = invert_tree_comparison (code,
      HONOR_NANS (TYPE_MODE (op_type)));
   if (code == ERROR_MARK)
     return NULL_TREE;
   else
     return build2 (code, type,
      TREE_OPERAND (arg, 0), TREE_OPERAND (arg, 1));
 }
    }

  switch (code)
    {
    case 137:
      return constant_boolean_node (integer_zerop (arg), type);

    case 132:
      return build2 (129, type,
       invert_truthvalue (TREE_OPERAND (arg, 0)),
       invert_truthvalue (TREE_OPERAND (arg, 1)));

    case 129:
      return build2 (132, type,
       invert_truthvalue (TREE_OPERAND (arg, 0)),
       invert_truthvalue (TREE_OPERAND (arg, 1)));

    case 128:





      if (TREE_CODE (TREE_OPERAND (arg, 1)) == 131)
 return build2 (128, type, TREE_OPERAND (arg, 0),
         TREE_OPERAND (TREE_OPERAND (arg, 1), 0));
      else
 return build2 (128, type,
         invert_truthvalue (TREE_OPERAND (arg, 0)),
         TREE_OPERAND (arg, 1));

    case 133:
      return build2 (130, type,
       invert_truthvalue (TREE_OPERAND (arg, 0)),
       invert_truthvalue (TREE_OPERAND (arg, 1)));

    case 130:
      return build2 (133, type,
       invert_truthvalue (TREE_OPERAND (arg, 0)),
       invert_truthvalue (TREE_OPERAND (arg, 1)));

    case 131:
      return TREE_OPERAND (arg, 0);

    case 140:
      {
 tree arg1 = TREE_OPERAND (arg, 1);
 tree arg2 = TREE_OPERAND (arg, 2);



 return build3 (140, type, TREE_OPERAND (arg, 0),
         VOID_TYPE_P (TREE_TYPE (arg1))
         ? arg1 : invert_truthvalue (arg1),
         VOID_TYPE_P (TREE_TYPE (arg2))
         ? arg2 : invert_truthvalue (arg2));
      }

    case 141:
      return build2 (141, type, TREE_OPERAND (arg, 0),
       invert_truthvalue (TREE_OPERAND (arg, 1)));

    case 136:
      return invert_truthvalue (TREE_OPERAND (arg, 0));

    case 135:
      if (TREE_CODE (TREE_TYPE (arg)) == BOOLEAN_TYPE)
 return build1 (131, type, arg);

    case 139:
    case 138:
      return build1 (TREE_CODE (arg), type,
       invert_truthvalue (TREE_OPERAND (arg, 0)));

    case 143:
      if (!integer_onep (TREE_OPERAND (arg, 1)))
 break;
      return build2 (EQ_EXPR, type, arg,
       build_int_cst (type, 0));

    case 134:
      return build1 (131, type, arg);

    case 142:
      return build1 (142, type,
       invert_truthvalue (TREE_OPERAND (arg, 0)));

    default:
      break;
    }

  return NULL_TREE;
}
