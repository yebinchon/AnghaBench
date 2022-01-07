
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef int HOST_WIDE_INT ;


 int BITS_PER_WORD ;
 int BLKmode ;
 scalar_t__ CONST_DOUBLE ;
 int EQ ;
 scalar_t__ FLOAT_WORDS_BIG_ENDIAN ;
 scalar_t__ GET_CODE (int *) ;
 int GET_MODE_BITSIZE (int) ;
 scalar_t__ GET_MODE_SIZE (int) ;
 int HOST_BITS_PER_WIDE_INT ;
 int NEG ;
 int * NULL_RTX ;
 int OPTAB_LIB_WIDEN ;
 scalar_t__ UNITS_PER_WORD ;
 int abs_optab ;
 int and_optab ;
 int const0_rtx ;
 int * copy_to_reg (int *) ;
 int emit_cmp_and_jump_insns (int *,int ,int ,int *,int,int,int *) ;
 int emit_label (int *) ;
 int emit_move_insn (int *,int *) ;
 int * expand_binop (int,int ,int *,int ,int *,int,int ) ;
 int * expand_unop (int,int ,int *,int *,int ) ;
 int * gen_label_rtx () ;
 int * gen_lowpart (int,int *) ;
 int immed_double_const (int,int,int) ;
 int int_mode_for_mode (int) ;
 int neg_optab ;
 int * operand_subword_force (int *,int,int) ;
 int * simplify_unary_operation (int ,int,int *,int) ;
 int word_mode ;

__attribute__((used)) static rtx
expand_copysign_absneg (enum machine_mode mode, rtx op0, rtx op1, rtx target,
          int bitpos, bool op0_is_abs)
{
  enum machine_mode imode;
  HOST_WIDE_INT hi, lo;
  int word;
  rtx label;

  if (target == op1)
    target = NULL_RTX;

  if (!op0_is_abs)
    {
      op0 = expand_unop (mode, abs_optab, op0, target, 0);
      if (op0 == ((void*)0))
 return NULL_RTX;
      target = op0;
    }
  else
    {
      if (target == NULL_RTX)
        target = copy_to_reg (op0);
      else
 emit_move_insn (target, op0);
    }

  if (GET_MODE_SIZE (mode) <= UNITS_PER_WORD)
    {
      imode = int_mode_for_mode (mode);
      if (imode == BLKmode)
 return NULL_RTX;
      op1 = gen_lowpart (imode, op1);
    }
  else
    {
      imode = word_mode;
      if (FLOAT_WORDS_BIG_ENDIAN)
 word = (GET_MODE_BITSIZE (mode) - bitpos) / BITS_PER_WORD;
      else
 word = bitpos / BITS_PER_WORD;
      bitpos = bitpos % BITS_PER_WORD;
      op1 = operand_subword_force (op1, word, mode);
    }

  if (bitpos < HOST_BITS_PER_WIDE_INT)
    {
      hi = 0;
      lo = (HOST_WIDE_INT) 1 << bitpos;
    }
  else
    {
      hi = (HOST_WIDE_INT) 1 << (bitpos - HOST_BITS_PER_WIDE_INT);
      lo = 0;
    }

  op1 = expand_binop (imode, and_optab, op1,
        immed_double_const (lo, hi, imode),
        NULL_RTX, 1, OPTAB_LIB_WIDEN);

  label = gen_label_rtx ();
  emit_cmp_and_jump_insns (op1, const0_rtx, EQ, NULL_RTX, imode, 1, label);

  if (GET_CODE (op0) == CONST_DOUBLE)
    op0 = simplify_unary_operation (NEG, mode, op0, mode);
  else
    op0 = expand_unop (mode, neg_optab, op0, target, 0);
  if (op0 != target)
    emit_move_insn (target, op0);

  emit_label (label);

  return target;
}
