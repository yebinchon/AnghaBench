
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum tls_model { ____Placeholder_tls_model } tls_model ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef int HOST_WIDE_INT ;


 scalar_t__ CONST ;
 scalar_t__ CONST_INT ;
 int GEN_INT (int) ;
 scalar_t__ GET_CODE (int ) ;
 int GET_MODE (int ) ;
 int INTVAL (int ) ;
 int NULL_RTX ;
 int OPTAB_DIRECT ;
 scalar_t__ PLUS ;
 int Pmode ;
 int VOIDmode ;
 int XEXP (int ,int) ;
 scalar_t__ aligned_offset_symbol_operand (int ,int) ;
 scalar_t__ any_offset_symbol_operand (int ,int) ;
 int emit_insn (int ) ;
 int expand_simple_binop (int,scalar_t__,int ,int ,int ,int,int ) ;
 int force_reg (int,int ) ;
 int gcc_assert (int) ;
 int gen_reg_rtx (int) ;
 int gen_rtx_SET (int ,int ,int ) ;
 scalar_t__ ia64_expand_load_address (int ,int ) ;
 int ia64_expand_tls_address (int,int ,int ,int ,int) ;
 int ia64_move_ok (int ,int ) ;
 scalar_t__ no_new_pseudos ;
 int plus_constant (int ,int) ;
 int ptr_mode ;
 scalar_t__ reload_completed ;
 int reload_in_progress ;
 scalar_t__ symbolic_operand (int ,int ) ;
 int tls_symbolic_operand_type (int ) ;

rtx
ia64_expand_move (rtx op0, rtx op1)
{
  enum machine_mode mode = GET_MODE (op0);

  if (!reload_in_progress && !reload_completed && !ia64_move_ok (op0, op1))
    op1 = force_reg (mode, op1);

  if ((mode == Pmode || mode == ptr_mode) && symbolic_operand (op1, VOIDmode))
    {
      HOST_WIDE_INT addend = 0;
      enum tls_model tls_kind;
      rtx sym = op1;

      if (GET_CODE (op1) == CONST
   && GET_CODE (XEXP (op1, 0)) == PLUS
   && GET_CODE (XEXP (XEXP (op1, 0), 1)) == CONST_INT)
 {
   addend = INTVAL (XEXP (XEXP (op1, 0), 1));
   sym = XEXP (XEXP (op1, 0), 0);
 }

      tls_kind = tls_symbolic_operand_type (sym);
      if (tls_kind)
 return ia64_expand_tls_address (tls_kind, op0, sym, op1, addend);

      if (any_offset_symbol_operand (sym, mode))
 addend = 0;
      else if (aligned_offset_symbol_operand (sym, mode))
 {
   HOST_WIDE_INT addend_lo, addend_hi;

   addend_lo = ((addend & 0x3fff) ^ 0x2000) - 0x2000;
   addend_hi = addend - addend_lo;

   if (addend_lo != 0)
     {
       op1 = plus_constant (sym, addend_hi);
       addend = addend_lo;
     }
   else
     addend = 0;
 }
      else
 op1 = sym;

      if (reload_completed)
 {

   gcc_assert (addend == 0);
   if (ia64_expand_load_address (op0, op1))
     return NULL_RTX;
 }

      if (addend)
 {
   rtx subtarget = no_new_pseudos ? op0 : gen_reg_rtx (mode);

   emit_insn (gen_rtx_SET (VOIDmode, subtarget, op1));

   op1 = expand_simple_binop (mode, PLUS, subtarget,
         GEN_INT (addend), op0, 1, OPTAB_DIRECT);
   if (op0 == op1)
     return NULL_RTX;
 }
    }

  return op1;
}
