
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int rtx ;
typedef int optab ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int INTEGER_TYPE ;
 int TREE_TYPE (int ) ;
 int TREE_VALUE (int ) ;
 int TYPE_MODE (int ) ;
 int VOID_TYPE ;
 int VOIDmode ;
 int convert_to_mode (int,int ,int ) ;
 int expand_expr (int ,int ,int ,int ) ;
 int expand_unop (int ,int ,int ,int ,int) ;
 int gcc_assert (int ) ;
 int validate_arglist (int ,int ,int ) ;

__attribute__((used)) static rtx
expand_builtin_unop (enum machine_mode target_mode, tree arglist, rtx target,
       rtx subtarget, optab op_optab)
{
  rtx op0;
  if (!validate_arglist (arglist, INTEGER_TYPE, VOID_TYPE))
    return 0;


  op0 = expand_expr (TREE_VALUE (arglist), subtarget, VOIDmode, 0);


  target = expand_unop (TYPE_MODE (TREE_TYPE (TREE_VALUE (arglist))),
   op_optab, op0, target, 1);
  gcc_assert (target);

  return convert_to_mode (target_mode, target, 0);
}
