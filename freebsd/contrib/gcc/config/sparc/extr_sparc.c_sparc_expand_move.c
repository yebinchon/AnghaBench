
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ CONST ;
 scalar_t__ CONST0_RTX (int) ;
 scalar_t__ CONSTANT_P (scalar_t__) ;
 int DFmode ;

 scalar_t__ GET_CODE (scalar_t__) ;
 scalar_t__ HIGH ;

 scalar_t__ LABEL_REF ;
 scalar_t__ MEM ;
 scalar_t__ NULL_RTX ;
 scalar_t__ PLUS ;

 scalar_t__ REGNO (scalar_t__) ;
 scalar_t__ REG_P (scalar_t__) ;
 scalar_t__ SCALAR_FLOAT_MODE_P (int) ;
 int SFmode ;

 scalar_t__ SPARC_FIRST_FP_REG ;
 scalar_t__ SPARC_FP_REG_P (scalar_t__) ;
 int SPARC_SYMBOL_REF_TLS_P (scalar_t__) ;
 int TARGET_ARCH64 ;
 scalar_t__ TARGET_HAVE_TLS ;
 scalar_t__ TARGET_VIS ;
 scalar_t__ VECTOR_MODE_P (int) ;
 scalar_t__ XEXP (scalar_t__,int) ;
 scalar_t__ const0_rtx ;
 scalar_t__ const_zero_operand (scalar_t__,int) ;
 int emit_insn (int ) ;
 scalar_t__ flag_pic ;
 scalar_t__ force_const_mem (int,scalar_t__) ;
 scalar_t__ force_operand (scalar_t__,scalar_t__) ;
 scalar_t__ force_reg (int,scalar_t__) ;
 int gcc_assert (int ) ;
 int gcc_unreachable () ;
 int gen_movdi_pic_label_ref (scalar_t__,scalar_t__) ;
 int gen_movsi_pic_label_ref (scalar_t__,scalar_t__) ;
 scalar_t__ gen_rtx_PLUS (int,scalar_t__,scalar_t__) ;
 scalar_t__ input_operand (scalar_t__,int) ;
 scalar_t__ legitimize_pic_address (scalar_t__,int,scalar_t__) ;
 scalar_t__ legitimize_tls_address (scalar_t__) ;
 scalar_t__ pic_address_needs_scratch (scalar_t__) ;
 scalar_t__ register_or_zero_operand (scalar_t__,int) ;
 scalar_t__ reload_completed ;
 scalar_t__ reload_in_progress ;
 int sparc_emit_set_const32 (scalar_t__,scalar_t__) ;
 int sparc_emit_set_const64 (scalar_t__,scalar_t__) ;
 scalar_t__ sparc_tls_referenced_p (scalar_t__) ;
 scalar_t__ symbolic_operand (scalar_t__,int) ;
 scalar_t__ validize_mem (scalar_t__) ;

bool
sparc_expand_move (enum machine_mode mode, rtx *operands)
{

  if (GET_CODE (operands[0]) == MEM)
    {

      if (register_or_zero_operand (operands[1], mode))
 return 0;

      if (!reload_in_progress)
 {
   operands[0] = validize_mem (operands[0]);
   operands[1] = force_reg (mode, operands[1]);
 }
    }


  if (TARGET_HAVE_TLS
      && CONSTANT_P (operands[1])
      && GET_CODE (operands[1]) != HIGH
      && sparc_tls_referenced_p (operands [1]))
    {
      rtx sym = operands[1];
      rtx addend = ((void*)0);

      if (GET_CODE (sym) == CONST && GET_CODE (XEXP (sym, 0)) == PLUS)
 {
   addend = XEXP (XEXP (sym, 0), 1);
   sym = XEXP (XEXP (sym, 0), 0);
 }

      gcc_assert (SPARC_SYMBOL_REF_TLS_P (sym));

      sym = legitimize_tls_address (sym);
      if (addend)
 {
   sym = gen_rtx_PLUS (mode, sym, addend);
   sym = force_operand (sym, operands[0]);
 }
      operands[1] = sym;
    }


  if (flag_pic && CONSTANT_P (operands[1]))
    {
      if (pic_address_needs_scratch (operands[1]))
 operands[1] = legitimize_pic_address (operands[1], mode, 0);

      if (GET_CODE (operands[1]) == LABEL_REF && mode == 128)
 {
   emit_insn (gen_movsi_pic_label_ref (operands[0], operands[1]));
   return 1;
 }

      if (GET_CODE (operands[1]) == LABEL_REF && mode == 131)
 {
   gcc_assert (TARGET_ARCH64);
   emit_insn (gen_movdi_pic_label_ref (operands[0], operands[1]));
   return 1;
 }

      if (symbolic_operand (operands[1], mode))
 {
   operands[1] = legitimize_pic_address (operands[1],
      mode,
      (reload_in_progress ?
       operands[0] :
       NULL_RTX));
   return 0;
 }
    }



  if (CONSTANT_P (operands[1])
      && REG_P (operands[0])
      && (SPARC_FP_REG_P (REGNO (operands[0]))
   || SCALAR_FLOAT_MODE_P (mode)
   || VECTOR_MODE_P (mode)))
    {



      if (operands [1] == const0_rtx)
 operands[1] = CONST0_RTX (mode);


      if ((TARGET_VIS || REGNO (operands[0]) < SPARC_FIRST_FP_REG)
   && const_zero_operand (operands[1], mode))
 return 0;

      if (REGNO (operands[0]) < SPARC_FIRST_FP_REG


   && (mode == SFmode

       || (mode == DFmode
    && (reload_completed || reload_in_progress))))
 return 0;

      operands[1] = force_const_mem (mode, operands[1]);
      if (!reload_in_progress)
 operands[1] = validize_mem (operands[1]);
      return 0;
    }


  if (!CONSTANT_P (operands[1])
      || GET_CODE (operands[1]) == HIGH
      || input_operand (operands[1], mode))
    return 0;

  switch (mode)
    {
    case 129:

      break;

    case 130:
    case 128:
      sparc_emit_set_const32 (operands[0], operands[1]);
      return 1;

    case 131:

      sparc_emit_set_const64 (operands[0], operands[1]);
      return 1;

    default:
      gcc_unreachable ();
    }

  return 0;
}
