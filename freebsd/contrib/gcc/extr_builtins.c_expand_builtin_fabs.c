
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int REAL_TYPE ;
 int TREE_TYPE (int ) ;
 int TREE_VALUE (int ) ;
 int TYPE_MODE (int ) ;
 int VOID_TYPE ;
 int VOIDmode ;
 int expand_abs (int,int ,int ,int ,int ) ;
 int expand_expr (int ,int ,int ,int ) ;
 int safe_from_p (int ,int ,int) ;
 int validate_arglist (int ,int ,int ) ;

__attribute__((used)) static rtx
expand_builtin_fabs (tree arglist, rtx target, rtx subtarget)
{
  enum machine_mode mode;
  tree arg;
  rtx op0;

  if (!validate_arglist (arglist, REAL_TYPE, VOID_TYPE))
    return 0;

  arg = TREE_VALUE (arglist);
  mode = TYPE_MODE (TREE_TYPE (arg));
  op0 = expand_expr (arg, subtarget, VOIDmode, 0);
  return expand_abs (mode, op0, target, 0, safe_from_p (target, arg, 1));
}
