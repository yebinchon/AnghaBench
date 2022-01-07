
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef enum optab_methods { ____Placeholder_optab_methods } optab_methods ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ BITS_PER_WORD ;
 scalar_t__ GEN_INT (scalar_t__) ;
 scalar_t__ NULL_RTX ;
 int OPTAB_DIRECT ;
 scalar_t__ REG_P (scalar_t__) ;
 scalar_t__ WORDS_BIG_ENDIAN ;
 int add_optab ;
 int ashr_optab ;
 int emit_move_insn (scalar_t__,scalar_t__) ;
 scalar_t__ expand_binop (int,int ,scalar_t__,scalar_t__,scalar_t__,int,int) ;
 int lshr_optab ;
 scalar_t__ operand_subword (scalar_t__,int,int,int) ;
 scalar_t__ operand_subword_force (scalar_t__,int,int) ;
 int smul_optab ;
 int smul_widen_optab ;
 int sub_optab ;
 int umul_widen_optab ;
 int word_mode ;

__attribute__((used)) static rtx
expand_doubleword_mult (enum machine_mode mode, rtx op0, rtx op1, rtx target,
         bool umulp, enum optab_methods methods)
{
  int low = (WORDS_BIG_ENDIAN ? 1 : 0);
  int high = (WORDS_BIG_ENDIAN ? 0 : 1);
  rtx wordm1 = umulp ? NULL_RTX : GEN_INT (BITS_PER_WORD - 1);
  rtx product, adjust, product_high, temp;

  rtx op0_high = operand_subword_force (op0, high, mode);
  rtx op0_low = operand_subword_force (op0, low, mode);
  rtx op1_high = operand_subword_force (op1, high, mode);
  rtx op1_low = operand_subword_force (op1, low, mode);
  if (!umulp)
    {

      temp = expand_binop (word_mode, lshr_optab, op0_low, wordm1,
      NULL_RTX, 1, methods);
      if (temp)
 op0_high = expand_binop (word_mode, add_optab, op0_high, temp,
     NULL_RTX, 0, OPTAB_DIRECT);
      else
 {
   temp = expand_binop (word_mode, ashr_optab, op0_low, wordm1,
          NULL_RTX, 0, methods);
   if (!temp)
     return NULL_RTX;
   op0_high = expand_binop (word_mode, sub_optab, op0_high, temp,
       NULL_RTX, 0, OPTAB_DIRECT);
 }

      if (!op0_high)
 return NULL_RTX;
    }

  adjust = expand_binop (word_mode, smul_optab, op0_high, op1_low,
    NULL_RTX, 0, OPTAB_DIRECT);
  if (!adjust)
    return NULL_RTX;



  if (!umulp)
    {

      temp = expand_binop (word_mode, lshr_optab, op1_low, wordm1,
      NULL_RTX, 1, methods);
      if (temp)
 op1_high = expand_binop (word_mode, add_optab, op1_high, temp,
     NULL_RTX, 0, OPTAB_DIRECT);
      else
 {
   temp = expand_binop (word_mode, ashr_optab, op1_low, wordm1,
          NULL_RTX, 0, methods);
   if (!temp)
     return NULL_RTX;
   op1_high = expand_binop (word_mode, sub_optab, op1_high, temp,
       NULL_RTX, 0, OPTAB_DIRECT);
 }

      if (!op1_high)
 return NULL_RTX;
    }

  temp = expand_binop (word_mode, smul_optab, op1_high, op0_low,
         NULL_RTX, 0, OPTAB_DIRECT);
  if (!temp)
    return NULL_RTX;



  adjust = expand_binop (word_mode, add_optab, adjust, temp,
    adjust, 0, OPTAB_DIRECT);

  if (target && !REG_P (target))
    target = NULL_RTX;

  if (umulp)
    product = expand_binop (mode, umul_widen_optab, op0_low, op1_low,
       target, 1, OPTAB_DIRECT);
  else
    product = expand_binop (mode, smul_widen_optab, op0_low, op1_low,
       target, 1, OPTAB_DIRECT);

  if (!product)
    return NULL_RTX;

  product_high = operand_subword (product, high, 1, mode);
  adjust = expand_binop (word_mode, add_optab, product_high, adjust,
    REG_P (product_high) ? product_high : adjust,
    0, OPTAB_DIRECT);
  emit_move_insn (product_high, adjust);
  return product;
}
