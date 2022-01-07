
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int EXPAND_NORMAL ;
 int POINTER_TYPE ;
 int VOID_TYPE ;
 int expand_expr (scalar_t__,int ,int,int ) ;
 scalar_t__ fold_builtin_strcspn (scalar_t__) ;
 scalar_t__ validate_arglist (scalar_t__,int ,int ,int ) ;

__attribute__((used)) static rtx
expand_builtin_strcspn (tree arglist, rtx target, enum machine_mode mode)
{
  if (validate_arglist (arglist, POINTER_TYPE, POINTER_TYPE, VOID_TYPE))
    {
      tree result = fold_builtin_strcspn (arglist);
      if (result)
 return expand_expr (result, target, mode, EXPAND_NORMAL);
    }
  return 0;
}
