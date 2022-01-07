
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 int SImode ;
 scalar_t__ TARGET_HARD_TP ;
 int emit_insn (int ) ;
 int emit_move_insn (scalar_t__,scalar_t__) ;
 int gen_load_tp_hard (scalar_t__) ;
 int gen_load_tp_soft () ;
 scalar_t__ gen_reg_rtx (int ) ;
 scalar_t__ gen_rtx_REG (int ,int ) ;

__attribute__((used)) static rtx
arm_load_tp (rtx target)
{
  if (!target)
    target = gen_reg_rtx (SImode);

  if (TARGET_HARD_TP)
    {

      emit_insn (gen_load_tp_hard (target));
    }
  else
    {




      rtx tmp;

      emit_insn (gen_load_tp_soft ());

      tmp = gen_rtx_REG (SImode, 0);
      emit_move_insn (target, tmp);
    }
  return target;
}
