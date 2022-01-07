
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef int HOST_WIDE_INT ;


 scalar_t__ CONST ;
 int GEN_INT (int) ;
 scalar_t__ GET_CODE (int ) ;
 scalar_t__ GET_MODE (int ) ;
 int INTVAL (int ) ;
 scalar_t__ Pmode ;
 scalar_t__ REG ;
 int REGNO (int ) ;
 scalar_t__ SYMBOL_REF ;
 scalar_t__ SYMBOL_REF_FUNCTION_P (int ) ;
 scalar_t__ TARGET_AUTO_PIC ;
 scalar_t__ TARGET_NO_PIC ;
 int VOIDmode ;
 int XEXP (int ,int) ;
 int emit_insn (int ) ;
 int gcc_assert (int) ;
 int gen_load_fptr (int ,int ) ;
 int gen_load_gprel (int ,int ) ;
 int gen_load_gprel64 (int ,int ) ;
 int gen_rtx_HIGH (scalar_t__,int ) ;
 int gen_rtx_LO_SUM (scalar_t__,int ,int ) ;
 int gen_rtx_PLUS (scalar_t__,int ,int ) ;
 int gen_rtx_REG_offset (int ,scalar_t__,int ,int ) ;
 int gen_rtx_SET (int ,int ,int ) ;
 int pic_offset_table_rtx ;
 int plus_constant (int ,int) ;
 scalar_t__ sdata_symbolic_operand (int ,int ) ;
 scalar_t__ small_addr_symbolic_operand (int ,int ) ;

bool
ia64_expand_load_address (rtx dest, rtx src)
{
  gcc_assert (GET_CODE (dest) == REG);





  if (GET_MODE (dest) != Pmode)
    dest = gen_rtx_REG_offset (dest, Pmode, REGNO (dest), 0);

  if (TARGET_NO_PIC)
    return 0;
  if (small_addr_symbolic_operand (src, VOIDmode))
    return 0;

  if (TARGET_AUTO_PIC)
    emit_insn (gen_load_gprel64 (dest, src));
  else if (GET_CODE (src) == SYMBOL_REF && SYMBOL_REF_FUNCTION_P (src))
    emit_insn (gen_load_fptr (dest, src));
  else if (sdata_symbolic_operand (src, VOIDmode))
    emit_insn (gen_load_gprel (dest, src));
  else
    {
      HOST_WIDE_INT addend = 0;
      rtx tmp;






      if (GET_CODE (src) == CONST)
 {
   HOST_WIDE_INT hi, lo;

   hi = INTVAL (XEXP (XEXP (src, 0), 1));
   lo = ((hi & 0x3fff) ^ 0x2000) - 0x2000;
   hi = hi - lo;

   if (lo != 0)
     {
       addend = lo;
       src = plus_constant (XEXP (XEXP (src, 0), 0), hi);
     }
 }

      tmp = gen_rtx_HIGH (Pmode, src);
      tmp = gen_rtx_PLUS (Pmode, tmp, pic_offset_table_rtx);
      emit_insn (gen_rtx_SET (VOIDmode, dest, tmp));

      tmp = gen_rtx_LO_SUM (Pmode, dest, src);
      emit_insn (gen_rtx_SET (VOIDmode, dest, tmp));

      if (addend)
 {
   tmp = gen_rtx_PLUS (Pmode, dest, GEN_INT (addend));
   emit_insn (gen_rtx_SET (VOIDmode, dest, tmp));
 }
    }

  return 1;
}
