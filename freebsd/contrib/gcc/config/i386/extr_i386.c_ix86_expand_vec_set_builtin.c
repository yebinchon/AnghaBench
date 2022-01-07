
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ GET_MODE (int ) ;
 int NULL_RTX ;
 int TREE_CHAIN (int ) ;
 int TREE_TYPE (int ) ;
 int TREE_VALUE (int ) ;
 int TYPE_MODE (int ) ;
 int VECTOR_MODE_P (int) ;
 scalar_t__ VOIDmode ;
 int convert_modes (int,scalar_t__,int ,int) ;
 int emit_move_insn (int ,int ) ;
 int expand_expr (int ,int ,int,int ) ;
 int force_reg (int,int ) ;
 int gcc_assert (int ) ;
 int gen_reg_rtx (int) ;
 int get_element_number (int ,int ) ;
 int ix86_expand_vector_set (int,int ,int ,int) ;

__attribute__((used)) static rtx
ix86_expand_vec_set_builtin (tree arglist)
{
  enum machine_mode tmode, mode1;
  tree arg0, arg1, arg2;
  int elt;
  rtx op0, op1, target;

  arg0 = TREE_VALUE (arglist);
  arg1 = TREE_VALUE (TREE_CHAIN (arglist));
  arg2 = TREE_VALUE (TREE_CHAIN (TREE_CHAIN (arglist)));

  tmode = TYPE_MODE (TREE_TYPE (arg0));
  mode1 = TYPE_MODE (TREE_TYPE (TREE_TYPE (arg0)));
  gcc_assert (VECTOR_MODE_P (tmode));

  op0 = expand_expr (arg0, NULL_RTX, tmode, 0);
  op1 = expand_expr (arg1, NULL_RTX, mode1, 0);
  elt = get_element_number (TREE_TYPE (arg0), arg2);

  if (GET_MODE (op1) != mode1 && GET_MODE (op1) != VOIDmode)
    op1 = convert_modes (mode1, GET_MODE (op1), op1, 1);

  op0 = force_reg (tmode, op0);
  op1 = force_reg (mode1, op1);



  target = gen_reg_rtx (tmode);
  emit_move_insn (target, op0);
  ix86_expand_vector_set (1, target, op1, elt);

  return target;
}
