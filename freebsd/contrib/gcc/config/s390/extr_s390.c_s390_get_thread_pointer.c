
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int BITS_PER_WORD ;
 int Pmode ;
 int TP_REGNUM ;
 int emit_move_insn (int ,int ) ;
 int gen_reg_rtx (int ) ;
 int gen_rtx_REG (int ,int ) ;
 int mark_reg_pointer (int ,int ) ;

rtx
s390_get_thread_pointer (void)
{
  rtx tp = gen_reg_rtx (Pmode);

  emit_move_insn (tp, gen_rtx_REG (Pmode, TP_REGNUM));
  mark_reg_pointer (tp, BITS_PER_WORD);

  return tp;
}
