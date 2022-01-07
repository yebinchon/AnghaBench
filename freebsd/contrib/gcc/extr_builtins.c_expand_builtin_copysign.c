
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int rtx ;


 int EXPAND_NORMAL ;
 int REAL_TYPE ;
 int TREE_CHAIN (int ) ;
 int TREE_VALUE (int ) ;
 int VOID_TYPE ;
 int VOIDmode ;
 int expand_copysign (int ,int ,int ) ;
 int expand_expr (int ,int ,int ,int ) ;
 int expand_normal (int ) ;
 int validate_arglist (int ,int ,int ,int ) ;

__attribute__((used)) static rtx
expand_builtin_copysign (tree arglist, rtx target, rtx subtarget)
{
  rtx op0, op1;
  tree arg;

  if (!validate_arglist (arglist, REAL_TYPE, REAL_TYPE, VOID_TYPE))
    return 0;

  arg = TREE_VALUE (arglist);
  op0 = expand_expr (arg, subtarget, VOIDmode, EXPAND_NORMAL);

  arg = TREE_VALUE (TREE_CHAIN (arglist));
  op1 = expand_normal (arg);

  return expand_copysign (op0, op1, target);
}
