
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef int HOST_WIDE_INT ;


 scalar_t__ COND_EXEC ;
 scalar_t__ COND_EXEC_TEST (scalar_t__) ;
 int GEN_INT (int ) ;
 scalar_t__ GET_CODE (scalar_t__) ;
 int MINUS ;
 scalar_t__ NULL_RTX ;
 scalar_t__ PATTERN (scalar_t__) ;
 scalar_t__ REG ;
 scalar_t__ REGNO (scalar_t__) ;
 int SET ;
 int after_arm_reorg ;
 int arm_constant_limit ;
 int arm_gen_constant (int,int,scalar_t__,int ,scalar_t__,scalar_t__,int,int) ;
 int emit_set_insn (scalar_t__,int ) ;
 scalar_t__ gen_reg_rtx (int) ;
 int gen_rtx_MINUS (int,scalar_t__,scalar_t__) ;
 int gen_rtx_fmt_ee (int,int,scalar_t__,scalar_t__) ;

int
arm_split_constant (enum rtx_code code, enum machine_mode mode, rtx insn,
      HOST_WIDE_INT val, rtx target, rtx source, int subtargets)
{
  rtx cond;

  if (insn && GET_CODE (PATTERN (insn)) == COND_EXEC)
    cond = COND_EXEC_TEST (PATTERN (insn));
  else
    cond = NULL_RTX;

  if (subtargets || code == SET
      || (GET_CODE (target) == REG && GET_CODE (source) == REG
   && REGNO (target) != REGNO (source)))
    {
      if (!after_arm_reorg
   && !cond
   && (arm_gen_constant (code, mode, NULL_RTX, val, target, source,
    1, 0)
       > arm_constant_limit + (code != SET)))
 {
   if (code == SET)
     {


       emit_set_insn (target, GEN_INT (val));
       return 1;
     }
   else
     {
       rtx temp = subtargets ? gen_reg_rtx (mode) : target;

       emit_set_insn (temp, GEN_INT (val));


       if (code == MINUS)
  emit_set_insn (target, gen_rtx_MINUS (mode, temp, source));
       else
  emit_set_insn (target,
          gen_rtx_fmt_ee (code, mode, source, temp));
       return 2;
     }
 }
    }

  return arm_gen_constant (code, mode, cond, val, target, source, subtargets,
      1);
}
