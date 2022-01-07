
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int DImode ;
 int GEN_INT (int ) ;
 int LCT_NORMAL ;
 scalar_t__ PROCESSOR_NIAGARA ;
 scalar_t__ PROCESSOR_ULTRASPARC ;
 scalar_t__ PROCESSOR_ULTRASPARC3 ;
 int Pmode ;
 int SImode ;
 int VOIDmode ;
 int emit_insn (int ) ;
 int emit_library_call (int ,int ,int ,int,int ,int ) ;
 int emit_move_insn (int ,int ) ;
 int gen_flushdi (int ) ;
 int gen_rtx_MEM (int ,int ) ;
 int gen_rtx_SYMBOL_REF (int ,char*) ;
 int plus_constant (int ,int) ;
 scalar_t__ sparc_cpu ;
 int trunc_int_for_mode (int,int ) ;
 int validize_mem (int ) ;

void
sparc64_initialize_trampoline (rtx tramp, rtx fnaddr, rtx cxt)
{
  emit_move_insn (gen_rtx_MEM (SImode, tramp),
    GEN_INT (trunc_int_for_mode (0x83414000, SImode)));
  emit_move_insn (gen_rtx_MEM (SImode, plus_constant (tramp, 4)),
    GEN_INT (trunc_int_for_mode (0xca586018, SImode)));
  emit_move_insn (gen_rtx_MEM (SImode, plus_constant (tramp, 8)),
    GEN_INT (trunc_int_for_mode (0x81c14000, SImode)));
  emit_move_insn (gen_rtx_MEM (SImode, plus_constant (tramp, 12)),
    GEN_INT (trunc_int_for_mode (0xca586010, SImode)));
  emit_move_insn (gen_rtx_MEM (DImode, plus_constant (tramp, 16)), cxt);
  emit_move_insn (gen_rtx_MEM (DImode, plus_constant (tramp, 24)), fnaddr);
  emit_insn (gen_flushdi (validize_mem (gen_rtx_MEM (DImode, tramp))));

  if (sparc_cpu != PROCESSOR_ULTRASPARC
      && sparc_cpu != PROCESSOR_ULTRASPARC3
      && sparc_cpu != PROCESSOR_NIAGARA)
    emit_insn (gen_flushdi (validize_mem (gen_rtx_MEM (DImode, plus_constant (tramp, 8)))));







}
