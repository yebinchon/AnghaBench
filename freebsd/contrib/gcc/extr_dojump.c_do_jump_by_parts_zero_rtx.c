
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int EQ ;
 int GET_MODE (scalar_t__) ;
 int GET_MODE_SIZE (int) ;
 scalar_t__ NULL_RTX ;
 int OPTAB_WIDEN ;
 int UNITS_PER_WORD ;
 int const0_rtx ;
 int do_compare_rtx_and_jump (scalar_t__,int ,int ,int,int ,scalar_t__,scalar_t__,scalar_t__) ;
 int emit_jump (scalar_t__) ;
 int emit_label (scalar_t__) ;
 int emit_move_insn (scalar_t__,scalar_t__) ;
 scalar_t__ expand_binop (int ,int ,scalar_t__,scalar_t__,scalar_t__,int,int ) ;
 scalar_t__ gen_label_rtx () ;
 scalar_t__ gen_reg_rtx (int ) ;
 int ior_optab ;
 scalar_t__ operand_subword_force (scalar_t__,int,int ) ;
 int word_mode ;

__attribute__((used)) static void
do_jump_by_parts_zero_rtx (enum machine_mode mode, rtx op0,
      rtx if_false_label, rtx if_true_label)
{
  int nwords = GET_MODE_SIZE (mode) / UNITS_PER_WORD;
  rtx part;
  int i;
  rtx drop_through_label = 0;






  part = gen_reg_rtx (word_mode);
  emit_move_insn (part, operand_subword_force (op0, 0, GET_MODE (op0)));
  for (i = 1; i < nwords && part != 0; i++)
    part = expand_binop (word_mode, ior_optab, part,
                         operand_subword_force (op0, i, GET_MODE (op0)),
                         part, 1, OPTAB_WIDEN);

  if (part != 0)
    {
      do_compare_rtx_and_jump (part, const0_rtx, EQ, 1, word_mode,
                               NULL_RTX, if_false_label, if_true_label);

      return;
    }


  if (! if_false_label)
    drop_through_label = if_false_label = gen_label_rtx ();

  for (i = 0; i < nwords; i++)
    do_compare_rtx_and_jump (operand_subword_force (op0, i, GET_MODE (op0)),
                             const0_rtx, EQ, 1, word_mode, NULL_RTX,
                             if_false_label, NULL_RTX);

  if (if_true_label)
    emit_jump (if_true_label);

  if (drop_through_label)
    emit_label (drop_through_label);
}
