
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ COMPOUND_EXPR ;
 int EXPAND_NORMAL ;
 int POINTER_TYPE ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int) ;
 int TREE_VALUE (scalar_t__) ;
 int VOID_TYPE ;
 int VOIDmode ;
 int const0_rtx ;
 int expand_expr (scalar_t__,int ,int,int ) ;
 int expand_movstr (int ,int ,int ,int ) ;
 scalar_t__ fold_builtin_strcpy (scalar_t__,scalar_t__,int ) ;
 scalar_t__ validate_arglist (scalar_t__,int ,int ,int ) ;

__attribute__((used)) static rtx
expand_builtin_strcpy (tree fndecl, tree arglist, rtx target, enum machine_mode mode)
{
  if (validate_arglist (arglist, POINTER_TYPE, POINTER_TYPE, VOID_TYPE))
    {
      tree result = fold_builtin_strcpy (fndecl, arglist, 0);
      if (result)
 {
   while (TREE_CODE (result) == COMPOUND_EXPR)
     {
       expand_expr (TREE_OPERAND (result, 0), const0_rtx, VOIDmode,
      EXPAND_NORMAL);
       result = TREE_OPERAND (result, 1);
     }
   return expand_expr (result, target, mode, EXPAND_NORMAL);
 }

      return expand_movstr (TREE_VALUE (arglist),
       TREE_VALUE (TREE_CHAIN (arglist)),
       target, 0);
    }
  return 0;
}
