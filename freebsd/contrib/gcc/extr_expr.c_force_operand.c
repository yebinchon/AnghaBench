
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;


 scalar_t__ ARITHMETIC_P (scalar_t__) ;

 scalar_t__ CONST ;
 int CONSTANT_P (scalar_t__) ;
 scalar_t__ CONST_INT ;

 scalar_t__ FIRST_VIRTUAL_REGISTER ;



 int FLOAT_MODE_P (int ) ;

 int GET_CODE (scalar_t__) ;
 int GET_MODE (scalar_t__) ;
 scalar_t__ GET_MODE_SIZE (int ) ;
 int INTEGRAL_MODE_P (int ) ;
 scalar_t__ LABEL_REF ;
 scalar_t__ LAST_VIRTUAL_REGISTER ;
 scalar_t__ MEM_P (scalar_t__) ;
 int MINUS ;


 scalar_t__ NULL_RTX ;
 int OPTAB_LIB_WIDEN ;
 int PLUS ;
 int RDIV_EXPR ;
 scalar_t__ REGNO (scalar_t__) ;
 scalar_t__ REG_P (scalar_t__) ;

 int SUBREG ;
 int SUBREG_BYTE (scalar_t__) ;
 scalar_t__ SUBREG_REG (scalar_t__) ;
 scalar_t__ SYMBOL_REF ;

 int TRUNC_DIV_EXPR ;
 int TRUNC_MOD_EXPR ;


 scalar_t__ UNARY_P (scalar_t__) ;


 scalar_t__ XEXP (scalar_t__,int) ;

 int convert_move (scalar_t__,scalar_t__,int) ;
 int emit_move_insn (scalar_t__,scalar_t__) ;
 scalar_t__ expand_divmod (int,int ,int ,scalar_t__,scalar_t__,scalar_t__,int) ;
 int expand_fix (scalar_t__,scalar_t__,int) ;
 int expand_float (scalar_t__,scalar_t__,int) ;
 scalar_t__ expand_mult (int ,scalar_t__,scalar_t__,scalar_t__,int) ;
 scalar_t__ expand_simple_binop (int ,int,scalar_t__,scalar_t__,scalar_t__,int,int ) ;
 scalar_t__ expand_simple_unop (int ,int,scalar_t__,scalar_t__,int ) ;
 int force_reg (int ,scalar_t__) ;
 scalar_t__ gen_reg_rtx (int ) ;
 scalar_t__ get_subtarget (scalar_t__) ;
 scalar_t__ negate_rtx (int ,scalar_t__) ;
 scalar_t__ pic_offset_table_rtx ;
 scalar_t__ simplify_gen_subreg (int ,int ,int ,int ) ;

rtx
force_operand (rtx value, rtx target)
{
  rtx op1, op2;

  rtx subtarget = get_subtarget (target);
  enum rtx_code code = GET_CODE (value);


  if (code == SUBREG
      && !REG_P (SUBREG_REG (value))
      && !MEM_P (SUBREG_REG (value)))
    {
      value = simplify_gen_subreg (GET_MODE (value),
       force_reg (GET_MODE (SUBREG_REG (value)),
           force_operand (SUBREG_REG (value),
            NULL_RTX)),
       GET_MODE (SUBREG_REG (value)),
       SUBREG_BYTE (value));
      code = GET_CODE (value);
    }


  if ((code == PLUS || code == MINUS)
      && XEXP (value, 0) == pic_offset_table_rtx
      && (GET_CODE (XEXP (value, 1)) == SYMBOL_REF
   || GET_CODE (XEXP (value, 1)) == LABEL_REF
   || GET_CODE (XEXP (value, 1)) == CONST))
    {
      if (!subtarget)
 subtarget = gen_reg_rtx (GET_MODE (value));
      emit_move_insn (subtarget, value);
      return subtarget;
    }

  if (ARITHMETIC_P (value))
    {
      op2 = XEXP (value, 1);
      if (!CONSTANT_P (op2) && !(REG_P (op2) && op2 != subtarget))
 subtarget = 0;
      if (code == MINUS && GET_CODE (op2) == CONST_INT)
 {
   code = PLUS;
   op2 = negate_rtx (GET_MODE (value), op2);
 }







      if (code == PLUS && GET_CODE (op2) == CONST_INT
   && GET_CODE (XEXP (value, 0)) == PLUS
   && REG_P (XEXP (XEXP (value, 0), 0))
   && REGNO (XEXP (XEXP (value, 0), 0)) >= FIRST_VIRTUAL_REGISTER
   && REGNO (XEXP (XEXP (value, 0), 0)) <= LAST_VIRTUAL_REGISTER)
 {
   rtx temp = expand_simple_binop (GET_MODE (value), code,
       XEXP (XEXP (value, 0), 0), op2,
       subtarget, 0, OPTAB_LIB_WIDEN);
   return expand_simple_binop (GET_MODE (value), code, temp,
          force_operand (XEXP (XEXP (value,
         0), 1), 0),
          target, 0, OPTAB_LIB_WIDEN);
 }

      op1 = force_operand (XEXP (value, 0), subtarget);
      op2 = force_operand (op2, NULL_RTX);
      switch (code)
 {
 case 135:
   return expand_mult (GET_MODE (value), op1, op2, target, 1);
 case 141:
   if (!INTEGRAL_MODE_P (GET_MODE (value)))
     return expand_simple_binop (GET_MODE (value), code, op1, op2,
     target, 1, OPTAB_LIB_WIDEN);
   else
     return expand_divmod (0,
      FLOAT_MODE_P (GET_MODE (value))
      ? RDIV_EXPR : TRUNC_DIV_EXPR,
      GET_MODE (value), op1, op2, target, 0);
   break;
 case 136:
   return expand_divmod (1, TRUNC_MOD_EXPR, GET_MODE (value), op1, op2,
    target, 0);
   break;
 case 132:
   return expand_divmod (0, TRUNC_DIV_EXPR, GET_MODE (value), op1, op2,
    target, 1);
   break;
 case 131:
   return expand_divmod (1, TRUNC_MOD_EXPR, GET_MODE (value), op1, op2,
    target, 1);
   break;
 case 142:
   return expand_simple_binop (GET_MODE (value), code, op1, op2,
          target, 0, OPTAB_LIB_WIDEN);
   break;
 default:
   return expand_simple_binop (GET_MODE (value), code, op1, op2,
          target, 1, OPTAB_LIB_WIDEN);
 }
    }
  if (UNARY_P (value))
    {
      if (!target)
 target = gen_reg_rtx (GET_MODE (value));
      op1 = force_operand (XEXP (value, 0), NULL_RTX);
      switch (code)
 {
 case 128:
 case 134:
 case 133:
 case 138:
 case 137:
   convert_move (target, op1, code == 128);
   return target;

 case 140:
 case 130:
   expand_fix (target, op1, code == 130);
   return target;

 case 139:
 case 129:
   expand_float (target, op1, code == 129);
   return target;

 default:
   return expand_simple_unop (GET_MODE (value), code, op1, target, 0);
 }
    }
  return value;
}
