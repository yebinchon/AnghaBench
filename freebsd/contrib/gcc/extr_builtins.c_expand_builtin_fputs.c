
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int rtx ;


 int EXPAND_NORMAL ;
 int NULL_TREE ;
 int POINTER_TYPE ;
 int VOID_TYPE ;
 int VOIDmode ;
 int const0_rtx ;
 int expand_expr (scalar_t__,int ,int ,int ) ;
 scalar_t__ fold_builtin_fputs (scalar_t__,int,int,int ) ;
 scalar_t__ validate_arglist (scalar_t__,int ,int ,int ) ;

__attribute__((used)) static rtx
expand_builtin_fputs (tree arglist, rtx target, bool unlocked)
{

  if (validate_arglist (arglist, POINTER_TYPE, POINTER_TYPE, VOID_TYPE))
    {
      tree result = fold_builtin_fputs (arglist, (target == const0_rtx),
     unlocked, NULL_TREE);
      if (result)
 return expand_expr (result, target, VOIDmode, EXPAND_NORMAL);
    }
  return 0;
}
