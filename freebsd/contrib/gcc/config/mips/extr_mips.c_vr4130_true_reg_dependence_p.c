
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 int PATTERN (int ) ;
 int note_stores (int ,int ,scalar_t__*) ;
 int vr4130_last_insn ;
 int vr4130_true_reg_dependence_p_1 ;

__attribute__((used)) static bool
vr4130_true_reg_dependence_p (rtx insn)
{
  note_stores (PATTERN (vr4130_last_insn),
        vr4130_true_reg_dependence_p_1, &insn);
  return insn == 0;
}
