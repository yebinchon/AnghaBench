
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ Pmode ;
 scalar_t__ SImode ;
 int SYMBOL_GOTOFF_CALL ;
 scalar_t__ TARGET_EXPLICIT_RELOCS ;
 scalar_t__ TARGET_NEWABI ;
 int VOIDmode ;
 int emit_insn (int ) ;
 int emit_move_insn (int ,int ) ;
 int gen_load_calldi (int ,int ,int ) ;
 int gen_load_callsi (int ,int ,int ) ;
 scalar_t__ global_got_operand (int ,int ) ;
 int mips_unspec_address (int ,int ) ;
 int mips_unspec_offset_high (int ,int ,int ,int ) ;
 int pic_offset_table_rtx ;

__attribute__((used)) static void
mips_load_call_address (rtx dest, rtx addr, int sibcall_p)
{




  if (TARGET_EXPLICIT_RELOCS
      && !(sibcall_p && TARGET_NEWABI)
      && global_got_operand (addr, VOIDmode))
    {
      rtx high, lo_sum_symbol;

      high = mips_unspec_offset_high (dest, pic_offset_table_rtx,
          addr, SYMBOL_GOTOFF_CALL);
      lo_sum_symbol = mips_unspec_address (addr, SYMBOL_GOTOFF_CALL);
      if (Pmode == SImode)
 emit_insn (gen_load_callsi (dest, high, lo_sum_symbol));
      else
 emit_insn (gen_load_calldi (dest, high, lo_sum_symbol));
    }
  else
    emit_move_insn (dest, addr);
}
