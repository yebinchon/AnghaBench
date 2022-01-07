
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tree ;
typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_5__ {TYPE_1__* handlers; } ;
struct TYPE_4__ {scalar_t__ insn_code; } ;


 scalar_t__ CODE_FOR_nothing ;
 int NULL_RTX ;
 int POINTER_TYPE ;
 int REAL_TYPE ;
 int TREE_CHAIN (int ) ;
 int TREE_OPERAND (int ,int) ;
 int TREE_TYPE (int ) ;
 int TREE_VALUE (int ) ;
 int TYPE_MODE (int ) ;
 int VOID_TYPE ;
 int build_fold_indirect_ref (int ) ;
 int const0_rtx ;
 int emit_move_insn (int ,int ) ;
 int expand_normal (int ) ;
 int expand_twoval_unop (TYPE_2__*,int ,int ,int ,int ) ;
 int gcc_assert (int) ;
 int gen_reg_rtx (int) ;
 TYPE_2__* sincos_optab ;
 int validate_arglist (int ,int ,int ,int ,int ) ;

__attribute__((used)) static rtx
expand_builtin_sincos (tree exp)
{
  rtx op0, op1, op2, target1, target2;
  tree arglist = TREE_OPERAND (exp, 1);
  enum machine_mode mode;
  tree arg, sinp, cosp;
  int result;

  if (!validate_arglist (arglist, REAL_TYPE,
    POINTER_TYPE, POINTER_TYPE, VOID_TYPE))
    return 0;

  arg = TREE_VALUE (arglist);
  sinp = TREE_VALUE (TREE_CHAIN (arglist));
  cosp = TREE_VALUE (TREE_CHAIN (TREE_CHAIN (arglist)));


  mode = TYPE_MODE (TREE_TYPE (arg));


  if (sincos_optab->handlers[(int) mode].insn_code == CODE_FOR_nothing)
    return NULL_RTX;

  target1 = gen_reg_rtx (mode);
  target2 = gen_reg_rtx (mode);

  op0 = expand_normal (arg);
  op1 = expand_normal (build_fold_indirect_ref (sinp));
  op2 = expand_normal (build_fold_indirect_ref (cosp));



  result = expand_twoval_unop (sincos_optab, op0, target2, target1, 0);
  gcc_assert (result);



  emit_move_insn (op1, target1);
  emit_move_insn (op2, target2);

  return const0_rtx;
}
