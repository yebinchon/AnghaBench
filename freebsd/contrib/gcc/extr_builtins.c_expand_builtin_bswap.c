
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int INTEGER_TYPE ;
 int TREE_TYPE (int ) ;
 int TREE_VALUE (int ) ;
 int TYPE_MODE (int ) ;
 int VOID_TYPE ;
 int VOIDmode ;
 int bswap_optab ;
 int convert_to_mode (int,int ,int ) ;
 int expand_expr (int ,int ,int ,int ) ;
 int expand_unop (int,int ,int ,int ,int) ;
 int gcc_assert (int ) ;
 int validate_arglist (int ,int ,int ) ;

__attribute__((used)) static rtx
expand_builtin_bswap (tree arglist, rtx target, rtx subtarget)
{
  enum machine_mode mode;
  tree arg;
  rtx op0;

  if (!validate_arglist (arglist, INTEGER_TYPE, VOID_TYPE))
    return 0;

  arg = TREE_VALUE (arglist);
  mode = TYPE_MODE (TREE_TYPE (arg));
  op0 = expand_expr (arg, subtarget, VOIDmode, 0);

  target = expand_unop (mode, bswap_optab, op0, target, 1);

  gcc_assert (target);

  return convert_to_mode (mode, target, 0);
}
