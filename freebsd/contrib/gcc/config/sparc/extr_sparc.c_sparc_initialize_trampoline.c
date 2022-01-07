
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int GEN_INT (int) ;
 int LCT_NORMAL ;
 int NULL_RTX ;
 int OPTAB_DIRECT ;
 scalar_t__ PROCESSOR_NIAGARA ;
 scalar_t__ PROCESSOR_ULTRASPARC ;
 scalar_t__ PROCESSOR_ULTRASPARC3 ;
 int Pmode ;
 int RSHIFT_EXPR ;
 int SImode ;
 int VOIDmode ;
 int emit_insn (int ) ;
 int emit_library_call (int ,int ,int ,int,int ,int ) ;
 int emit_move_insn (int ,int ) ;
 int expand_and (int ,int ,int ,int ) ;
 int expand_binop (int ,int ,int ,int ,int ,int,int ) ;
 int expand_shift (int ,int ,int ,int ,int ,int) ;
 int gen_flush (int ) ;
 int gen_rtx_MEM (int ,int ) ;
 int gen_rtx_SYMBOL_REF (int ,char*) ;
 int ior_optab ;
 int plus_constant (int ,int) ;
 int size_int (int) ;
 scalar_t__ sparc_cpu ;
 int trunc_int_for_mode (int,int ) ;
 int validize_mem (int ) ;

void
sparc_initialize_trampoline (rtx tramp, rtx fnaddr, rtx cxt)
{
  emit_move_insn
    (gen_rtx_MEM (SImode, plus_constant (tramp, 0)),
     expand_binop (SImode, ior_optab,
     expand_shift (RSHIFT_EXPR, SImode, fnaddr,
     size_int (10), 0, 1),
     GEN_INT (trunc_int_for_mode (0x03000000, SImode)),
     NULL_RTX, 1, OPTAB_DIRECT));

  emit_move_insn
    (gen_rtx_MEM (SImode, plus_constant (tramp, 4)),
     expand_binop (SImode, ior_optab,
     expand_shift (RSHIFT_EXPR, SImode, cxt,
     size_int (10), 0, 1),
     GEN_INT (trunc_int_for_mode (0x05000000, SImode)),
     NULL_RTX, 1, OPTAB_DIRECT));

  emit_move_insn
    (gen_rtx_MEM (SImode, plus_constant (tramp, 8)),
     expand_binop (SImode, ior_optab,
     expand_and (SImode, fnaddr, GEN_INT (0x3ff), NULL_RTX),
     GEN_INT (trunc_int_for_mode (0x81c06000, SImode)),
     NULL_RTX, 1, OPTAB_DIRECT));

  emit_move_insn
    (gen_rtx_MEM (SImode, plus_constant (tramp, 12)),
     expand_binop (SImode, ior_optab,
     expand_and (SImode, cxt, GEN_INT (0x3ff), NULL_RTX),
     GEN_INT (trunc_int_for_mode (0x8410a000, SImode)),
     NULL_RTX, 1, OPTAB_DIRECT));



  emit_insn (gen_flush (validize_mem (gen_rtx_MEM (SImode, tramp))));
  if (sparc_cpu != PROCESSOR_ULTRASPARC
      && sparc_cpu != PROCESSOR_ULTRASPARC3
      && sparc_cpu != PROCESSOR_NIAGARA)
    emit_insn (gen_flush (validize_mem (gen_rtx_MEM (SImode,
           plus_constant (tramp, 8)))));
}
