
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef enum reg_note { ____Placeholder_reg_note } reg_note ;


 scalar_t__ XEXP (scalar_t__,int) ;
 int add_dependence (scalar_t__,scalar_t__,int) ;
 int sched_insns_conditions_mutex_p (scalar_t__,scalar_t__) ;

__attribute__((used)) static void
add_dependence_list (rtx insn, rtx list, int uncond, enum reg_note dep_type)
{
  for (; list; list = XEXP (list, 1))
    {
      if (uncond || ! sched_insns_conditions_mutex_p (insn, XEXP (list, 0)))
 add_dependence (insn, XEXP (list, 0), dep_type);
    }
}
