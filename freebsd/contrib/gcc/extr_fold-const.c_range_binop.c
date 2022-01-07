
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;





 scalar_t__ INTEGER_CST ;



 int STRIP_NOPS (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_CODE_CLASS (int) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ constant_boolean_node (int,scalar_t__) ;
 scalar_t__ fold_build2 (int,scalar_t__,scalar_t__,int ) ;
 int fold_convert (scalar_t__,scalar_t__) ;
 int gcc_unreachable () ;
 scalar_t__ tcc_comparison ;

__attribute__((used)) static tree
range_binop (enum tree_code code, tree type, tree arg0, int upper0_p,
      tree arg1, int upper1_p)
{
  tree tem;
  int result;
  int sgn0, sgn1;






  if (arg0 != 0 && arg1 != 0)
    {
      tem = fold_build2 (code, type != 0 ? type : TREE_TYPE (arg0),
    arg0, fold_convert (TREE_TYPE (arg0), arg1));
      STRIP_NOPS (tem);
      return TREE_CODE (tem) == INTEGER_CST ? tem : 0;
    }

  if (TREE_CODE_CLASS (code) != tcc_comparison)
    return 0;







  sgn0 = arg0 != 0 ? 0 : (upper0_p ? 1 : -1);
  sgn1 = arg1 != 0 ? 0 : (upper1_p ? 1 : -1);
  switch (code)
    {
    case 133:
      result = sgn0 == sgn1;
      break;
    case 128:
      result = sgn0 != sgn1;
      break;
    case 129:
      result = sgn0 < sgn1;
      break;
    case 130:
      result = sgn0 <= sgn1;
      break;
    case 131:
      result = sgn0 > sgn1;
      break;
    case 132:
      result = sgn0 >= sgn1;
      break;
    default:
      gcc_unreachable ();
    }

  return constant_boolean_node (result, type);
}
