
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int DImode ;
 int HImode ;
 int LCT_NORMAL ;
 int NULL_RTX ;
 int OPTAB_DIRECT ;
 int Pmode ;
 int QImode ;
 int SImode ;
 int TARGET_64BIT ;
 int TRAMPOLINE_SIZE ;
 int VOIDmode ;
 int copy_to_mode_reg (int ,int ) ;
 int emit_library_call (int ,int ,int ,int,int ,int ) ;
 int emit_move_insn (int ,int ) ;
 int expand_binop (int ,int ,int ,int ,int ,int,int ) ;
 int gcc_assert (int) ;
 int gen_int_mode (int,int ) ;
 int gen_lowpart (int ,int ) ;
 int gen_rtx_MEM (int ,int ) ;
 int gen_rtx_SYMBOL_REF (int ,char*) ;
 int plus_constant (int ,int) ;
 int sub_optab ;
 scalar_t__ x86_64_zext_immediate_operand (int ,int ) ;

void
x86_initialize_trampoline (rtx tramp, rtx fnaddr, rtx cxt)
{
  if (!TARGET_64BIT)
    {

      rtx disp = expand_binop (SImode, sub_optab, fnaddr,
          plus_constant (tramp, 10),
          NULL_RTX, 1, OPTAB_DIRECT);
      emit_move_insn (gen_rtx_MEM (QImode, tramp),
        gen_int_mode (0xb9, QImode));
      emit_move_insn (gen_rtx_MEM (SImode, plus_constant (tramp, 1)), cxt);
      emit_move_insn (gen_rtx_MEM (QImode, plus_constant (tramp, 5)),
        gen_int_mode (0xe9, QImode));
      emit_move_insn (gen_rtx_MEM (SImode, plus_constant (tramp, 6)), disp);
    }
  else
    {
      int offset = 0;



      if (x86_64_zext_immediate_operand (fnaddr, VOIDmode))
 {
   fnaddr = copy_to_mode_reg (DImode, fnaddr);
   emit_move_insn (gen_rtx_MEM (HImode, plus_constant (tramp, offset)),
     gen_int_mode (0xbb41, HImode));
   emit_move_insn (gen_rtx_MEM (SImode, plus_constant (tramp, offset + 2)),
     gen_lowpart (SImode, fnaddr));
   offset += 6;
 }
      else
 {
   emit_move_insn (gen_rtx_MEM (HImode, plus_constant (tramp, offset)),
     gen_int_mode (0xbb49, HImode));
   emit_move_insn (gen_rtx_MEM (DImode, plus_constant (tramp, offset + 2)),
     fnaddr);
   offset += 10;
 }

      emit_move_insn (gen_rtx_MEM (HImode, plus_constant (tramp, offset)),
        gen_int_mode (0xba49, HImode));
      emit_move_insn (gen_rtx_MEM (DImode, plus_constant (tramp, offset + 2)),
        cxt);
      offset += 10;

      emit_move_insn (gen_rtx_MEM (HImode, plus_constant (tramp, offset)),
        gen_int_mode (0xff49, HImode));
      emit_move_insn (gen_rtx_MEM (QImode, plus_constant (tramp, offset+2)),
        gen_int_mode (0xe3, QImode));
      offset += 3;
      gcc_assert (offset <= TRAMPOLINE_SIZE);
    }





}
