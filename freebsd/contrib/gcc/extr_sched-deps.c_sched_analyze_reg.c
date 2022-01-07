
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct deps {int max_reg; int last_function_call; int sched_before_next_call; } ;
typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int CLOBBER ;
 int FIRST_PSEUDO_REGISTER ;
 int GET_CODE (int ) ;
 scalar_t__ MEM_P (int ) ;
 int PATTERN (int ) ;
 int REG_DEP_ANTI ;
 scalar_t__ REG_N_CALLS_CROSSED (int) ;
 int SET ;
 int SET_REGNO_REG_SET (int ,int) ;
 int USE ;
 int XEXP (int ,int ) ;
 int add_dependence_list (int ,int ,int,int ) ;
 int alloc_INSN_LIST (int ,int ) ;
 int gcc_assert (int) ;
 scalar_t__ get_reg_known_equiv_p (int) ;
 int get_reg_known_value (int) ;
 int** hard_regno_nregs ;
 int reg_pending_clobbers ;
 int reg_pending_sets ;
 int reg_pending_uses ;
 int reload_completed ;
 int sched_analyze_2 (struct deps*,int ,int ) ;

__attribute__((used)) static void
sched_analyze_reg (struct deps *deps, int regno, enum machine_mode mode,
     enum rtx_code ref, rtx insn)
{


  if (regno < FIRST_PSEUDO_REGISTER)
    {
      int i = hard_regno_nregs[regno][mode];
      if (ref == SET)
 {
   while (--i >= 0)
     SET_REGNO_REG_SET (reg_pending_sets, regno + i);
 }
      else if (ref == USE)
 {
   while (--i >= 0)
     SET_REGNO_REG_SET (reg_pending_uses, regno + i);
 }
      else
 {
   while (--i >= 0)
     SET_REGNO_REG_SET (reg_pending_clobbers, regno + i);
 }
    }




  else if (regno >= deps->max_reg)
    {
      enum rtx_code code = GET_CODE (PATTERN (insn));
      gcc_assert (code == USE || code == CLOBBER);
    }

  else
    {
      if (ref == SET)
 SET_REGNO_REG_SET (reg_pending_sets, regno);
      else if (ref == USE)
 SET_REGNO_REG_SET (reg_pending_uses, regno);
      else
 SET_REGNO_REG_SET (reg_pending_clobbers, regno);




      if (!reload_completed && get_reg_known_equiv_p (regno))
 {
   rtx t = get_reg_known_value (regno);
   if (MEM_P (t))
     sched_analyze_2 (deps, XEXP (t, 0), insn);
 }



      if (REG_N_CALLS_CROSSED (regno) == 0)
 {
   if (ref == USE)
     deps->sched_before_next_call
       = alloc_INSN_LIST (insn, deps->sched_before_next_call);
   else
     add_dependence_list (insn, deps->last_function_call, 1,
     REG_DEP_ANTI);
 }
    }
}
