
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef enum tls_model { ____Placeholder_tls_model } tls_model ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ CONST ;
 scalar_t__ CONST_DOUBLE ;
 int DImode ;
 scalar_t__ FLOAT_MODE_P (int) ;
 scalar_t__ GET_CODE (scalar_t__) ;
 scalar_t__ GET_MODE_SIZE (int) ;
 scalar_t__ MACHOPIC_INDIRECT ;
 scalar_t__ MACHOPIC_PURE ;
 scalar_t__ MEM ;
 int OPTAB_DIRECT ;
 scalar_t__ PLUS ;
 scalar_t__ PUSH_ROUNDING (scalar_t__) ;
 int Pmode ;
 scalar_t__ REG ;
 scalar_t__ SYMBOL_REF ;
 int SYMBOL_REF_TLS_MODEL (scalar_t__) ;
 scalar_t__ TARGET_64BIT ;
 scalar_t__ TARGET_MACHO ;
 int VOIDmode ;
 scalar_t__ XEXP (scalar_t__,int) ;
 scalar_t__ copy_to_mode_reg (int,scalar_t__) ;
 int emit_insn (int ) ;
 int emit_move_insn (scalar_t__,scalar_t__) ;
 scalar_t__ expand_simple_binop (int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int,int ) ;
 scalar_t__ flag_pic ;
 int force_const_mem (int,scalar_t__) ;
 scalar_t__ force_operand (scalar_t__,scalar_t__) ;
 scalar_t__ force_reg (int,scalar_t__) ;
 scalar_t__ gen_reg_rtx (int) ;
 int gen_rtx_SET (int ,scalar_t__,scalar_t__) ;
 int general_no_elim_operand (scalar_t__,int) ;
 scalar_t__ immediate_operand (scalar_t__,int) ;
 scalar_t__ legitimize_address (scalar_t__,scalar_t__,int) ;
 scalar_t__ legitimize_tls_address (scalar_t__,int,int) ;
 scalar_t__ machopic_indirect_data_reference (scalar_t__,scalar_t__) ;
 scalar_t__ machopic_legitimize_pic_address (scalar_t__,int,scalar_t__) ;
 scalar_t__ optimize ;
 scalar_t__ push_operand (scalar_t__,int) ;
 int register_operand (scalar_t__,int) ;
 scalar_t__ reload_completed ;
 scalar_t__ reload_in_progress ;
 scalar_t__ symbolic_operand (scalar_t__,int) ;
 scalar_t__ validize_mem (int ) ;
 int x86_64_zext_immediate_operand (scalar_t__,int ) ;

void
ix86_expand_move (enum machine_mode mode, rtx operands[])
{
  int strict = (reload_in_progress || reload_completed);
  rtx op0, op1;
  enum tls_model model;

  op0 = operands[0];
  op1 = operands[1];

  if (GET_CODE (op1) == SYMBOL_REF)
    {
      model = SYMBOL_REF_TLS_MODEL (op1);
      if (model)
 {
   op1 = legitimize_tls_address (op1, model, 1);
   op1 = force_operand (op1, op0);
   if (op1 == op0)
     return;
 }
    }
  else if (GET_CODE (op1) == CONST
    && GET_CODE (XEXP (op1, 0)) == PLUS
    && GET_CODE (XEXP (XEXP (op1, 0), 0)) == SYMBOL_REF)
    {
      model = SYMBOL_REF_TLS_MODEL (XEXP (XEXP (op1, 0), 0));
      if (model)
 {
   rtx addend = XEXP (XEXP (op1, 0), 1);
   op1 = legitimize_tls_address (XEXP (XEXP (op1, 0), 0), model, 1);
   op1 = force_operand (op1, ((void*)0));
   op1 = expand_simple_binop (Pmode, PLUS, op1, addend,
         op0, 1, OPTAB_DIRECT);
   if (op1 == op0)
     return;
 }
    }

  if (flag_pic && mode == Pmode && symbolic_operand (op1, Pmode))
    {
      if (TARGET_MACHO && !TARGET_64BIT)
 {
 }
      else
 {
   if (GET_CODE (op0) == MEM)
     op1 = force_reg (Pmode, op1);
   else
     op1 = legitimize_address (op1, op1, Pmode);
 }
    }
  else
    {
      if (GET_CODE (op0) == MEM
   && (PUSH_ROUNDING (GET_MODE_SIZE (mode)) != GET_MODE_SIZE (mode)
       || !push_operand (op0, mode))
   && GET_CODE (op1) == MEM)
 op1 = force_reg (mode, op1);

      if (push_operand (op0, mode)
   && ! general_no_elim_operand (op1, mode))
 op1 = copy_to_mode_reg (mode, op1);



      if (TARGET_64BIT && mode == DImode
   && immediate_operand (op1, mode)
   && !x86_64_zext_immediate_operand (op1, VOIDmode)
   && !register_operand (op0, mode)
   && optimize && !reload_completed && !reload_in_progress)
 op1 = copy_to_mode_reg (mode, op1);

      if (FLOAT_MODE_P (mode))
 {




   if (strict)
     ;
   else if (GET_CODE (op1) == CONST_DOUBLE)
     {
       op1 = validize_mem (force_const_mem (mode, op1));
       if (!register_operand (op0, mode))
  {
    rtx temp = gen_reg_rtx (mode);
    emit_insn (gen_rtx_SET (VOIDmode, temp, op1));
    emit_move_insn (op0, temp);
    return;
  }
     }
 }
    }

  emit_insn (gen_rtx_SET (VOIDmode, op0, op1));
}
