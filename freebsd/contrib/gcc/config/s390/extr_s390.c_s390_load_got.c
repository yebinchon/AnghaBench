
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef int SYMBOL_REF_FLAGS ;


 int Pmode ;
 int SYMBOL_FLAG_LOCAL ;
 scalar_t__ TARGET_CPU_ZARCH ;
 int UNSPEC_LTREL_BASE ;
 int UNSPEC_LTREL_OFFSET ;
 scalar_t__ XEXP (scalar_t__,int ) ;
 int emit_move_insn (int ,scalar_t__) ;
 int end_sequence () ;
 scalar_t__ force_const_mem (int ,scalar_t__) ;
 int gen_rtvec (int,scalar_t__) ;
 scalar_t__ gen_rtx_CONST (int ,scalar_t__) ;
 scalar_t__ gen_rtx_PLUS (int ,int ,scalar_t__) ;
 scalar_t__ gen_rtx_SYMBOL_REF (int ,char*) ;
 scalar_t__ gen_rtx_UNSPEC (int ,int ,int ) ;
 scalar_t__ get_insns () ;
 scalar_t__ got_symbol ;
 int pic_offset_table_rtx ;
 int start_sequence () ;

rtx
s390_load_got (void)
{
  rtx insns;

  if (!got_symbol)
    {
      got_symbol = gen_rtx_SYMBOL_REF (Pmode, "_GLOBAL_OFFSET_TABLE_");
      SYMBOL_REF_FLAGS (got_symbol) = SYMBOL_FLAG_LOCAL;
    }

  start_sequence ();

  if (TARGET_CPU_ZARCH)
    {
      emit_move_insn (pic_offset_table_rtx, got_symbol);
    }
  else
    {
      rtx offset;

      offset = gen_rtx_UNSPEC (Pmode, gen_rtvec (1, got_symbol),
          UNSPEC_LTREL_OFFSET);
      offset = gen_rtx_CONST (Pmode, offset);
      offset = force_const_mem (Pmode, offset);

      emit_move_insn (pic_offset_table_rtx, offset);

      offset = gen_rtx_UNSPEC (Pmode, gen_rtvec (1, XEXP (offset, 0)),
          UNSPEC_LTREL_BASE);
      offset = gen_rtx_PLUS (Pmode, pic_offset_table_rtx, offset);

      emit_move_insn (pic_offset_table_rtx, offset);
    }

  insns = get_insns ();
  end_sequence ();
  return insns;
}
