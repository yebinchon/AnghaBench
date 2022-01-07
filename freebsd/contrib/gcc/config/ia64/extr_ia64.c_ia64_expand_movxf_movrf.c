
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ CONSTANT_P (int ) ;
 scalar_t__ CONST_DOUBLE ;
 int DImode ;
 scalar_t__ GET_CODE (int ) ;
 scalar_t__ GET_MODE (int ) ;
 scalar_t__ GR_REGNO_P (scalar_t__) ;
 scalar_t__ MEM ;
 scalar_t__ REG ;
 scalar_t__ REGNO (int ) ;
 scalar_t__ SUBREG ;
 int SUBREG_REG (int ) ;
 scalar_t__ TImode ;
 int WORDS_BIG_ENDIAN ;
 int adjust_address (int ,int,int) ;
 int assign_stack_temp (scalar_t__,int,int ) ;
 int emit_move_insn (int ,int ) ;
 int force_const_mem (int,int ) ;
 int force_reg (int,int ) ;
 int gcc_assert (int) ;
 int gen_rtx_REG (int,scalar_t__) ;
 int gen_rtx_SUBREG (int,int ,int ) ;
 int ia64_move_ok (int ,int ) ;
 int no_new_pseudos ;
 int operand_subword (int ,int,int ,int) ;
 scalar_t__ register_operand (int ,int) ;
 int reload_completed ;
 int reload_in_progress ;
 int spill_xfmode_rfmode_operand (int ,int,int) ;
 int validize_mem (int ) ;

bool
ia64_expand_movxf_movrf (enum machine_mode mode, rtx operands[])
{
  rtx op0 = operands[0];

  if (GET_CODE (op0) == SUBREG)
    op0 = SUBREG_REG (op0);
  if (GET_CODE (op0) == REG && GR_REGNO_P (REGNO (op0)))
    {
      rtx out[2];



      gcc_assert (!no_new_pseudos);


      if ((GET_CODE (operands[1]) == SUBREG
    && GET_MODE (SUBREG_REG (operands[1])) == TImode)
   || (GET_CODE (operands[1]) == REG
       && GR_REGNO_P (REGNO (operands[1]))))
 {
   rtx op1 = operands[1];

   if (GET_CODE (op1) == SUBREG)
     op1 = SUBREG_REG (op1);
   else
     op1 = gen_rtx_REG (TImode, REGNO (op1));

   emit_move_insn (gen_rtx_REG (TImode, REGNO (op0)), op1);
   return 1;
 }

      if (GET_CODE (operands[1]) == CONST_DOUBLE)
 {

   emit_move_insn (gen_rtx_REG (DImode, REGNO (op0)),
     operand_subword (operands[1], WORDS_BIG_ENDIAN,
        0, mode));
   emit_move_insn (gen_rtx_REG (DImode, REGNO (op0) + 1),
     operand_subword (operands[1], !WORDS_BIG_ENDIAN,
        0, mode));
   return 1;
 }


      if (register_operand (operands[1], mode))
 operands[1] = spill_xfmode_rfmode_operand (operands[1], 1, mode);

      gcc_assert (GET_CODE (operands[1]) == MEM);


      out[0] = gen_rtx_REG (DImode, REGNO (op0));
      out[1] = gen_rtx_REG (DImode, REGNO (op0) + 1);

      emit_move_insn (out[0], adjust_address (operands[1], DImode, 0));
      emit_move_insn (out[1], adjust_address (operands[1], DImode, 8));
      return 1;
    }

  if (GET_CODE (operands[1]) == REG && GR_REGNO_P (REGNO (operands[1])))
    {


      gcc_assert (!no_new_pseudos);





      if (register_operand (operands[0], mode))
 {
   rtx op1 = gen_rtx_REG (TImode, REGNO (operands[1]));
   op1 = gen_rtx_SUBREG (mode, op1, 0);
   operands[1] = spill_xfmode_rfmode_operand (op1, 0, mode);
 }

      else
 {
   rtx in[2];

   gcc_assert (GET_CODE (operands[0]) == MEM);


   in[0] = gen_rtx_REG (DImode, REGNO (operands[1]));
   in[1] = gen_rtx_REG (DImode, REGNO (operands[1]) + 1);

   emit_move_insn (adjust_address (operands[0], DImode, 0), in[0]);
   emit_move_insn (adjust_address (operands[0], DImode, 8), in[1]);
   return 1;
 }
    }

  if (!reload_in_progress && !reload_completed)
    {
      operands[1] = spill_xfmode_rfmode_operand (operands[1], 0, mode);

      if (GET_MODE (op0) == TImode && GET_CODE (op0) == REG)
 {
   rtx memt, memx, in = operands[1];
   if (CONSTANT_P (in))
     in = validize_mem (force_const_mem (mode, in));
   if (GET_CODE (in) == MEM)
     memt = adjust_address (in, TImode, 0);
   else
     {
       memt = assign_stack_temp (TImode, 16, 0);
       memx = adjust_address (memt, mode, 0);
       emit_move_insn (memx, in);
     }
   emit_move_insn (op0, memt);
   return 1;
 }

      if (!ia64_move_ok (operands[0], operands[1]))
 operands[1] = force_reg (mode, operands[1]);
    }

  return 0;
}
