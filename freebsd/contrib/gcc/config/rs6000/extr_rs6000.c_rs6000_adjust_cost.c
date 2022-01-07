
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int CPU_POWER4 ;
 int CPU_POWER5 ;
 int CPU_PPC603 ;
 int CPU_PPC604 ;
 int CPU_PPC604E ;
 int CPU_PPC620 ;
 int CPU_PPC630 ;
 int CPU_PPC7400 ;
 int CPU_PPC7450 ;
 int CPU_PPC750 ;
 scalar_t__ GET_CODE (int ) ;
 int GET_MODE (int ) ;
 scalar_t__ GET_MODE_SIZE (int ) ;
 int INSN_CODE (int ) ;
 scalar_t__ MEM ;
 int PATTERN (int ) ;
 scalar_t__ REG_NOTE_KIND (int ) ;
 scalar_t__ SET ;
 int TARGET_POWER ;

 int TYPE_CMP ;
 int TYPE_COMPARE ;
 int TYPE_CR_LOGICAL ;
 int TYPE_DELAYED_COMPARE ;
 int TYPE_DELAYED_CR ;
 int TYPE_FPCOMPARE ;
 int TYPE_IMUL_COMPARE ;

 int TYPE_LMUL_COMPARE ;
 int XEXP (int ,int) ;
 int get_attr_type (int ) ;
 scalar_t__ recog_memoized (int ) ;
 int rs6000_cpu_attr ;
 scalar_t__ rs6000_sched_groups ;

__attribute__((used)) static int
rs6000_adjust_cost (rtx insn, rtx link, rtx dep_insn, int cost)
{
  if (! recog_memoized (insn))
    return 0;

  if (REG_NOTE_KIND (link) != 0)
    return 0;

  if (REG_NOTE_KIND (link) == 0)
    {




      if (rs6000_sched_groups
   && GET_CODE (PATTERN (insn)) == SET
   && GET_CODE (PATTERN (dep_insn)) == SET
   && GET_CODE (XEXP (PATTERN (insn), 1)) == MEM
   && GET_CODE (XEXP (PATTERN (dep_insn), 0)) == MEM
   && (GET_MODE_SIZE (GET_MODE (XEXP (PATTERN (insn), 1)))
       > GET_MODE_SIZE (GET_MODE (XEXP (PATTERN (dep_insn), 0)))))
 return cost + 14;

      switch (get_attr_type (insn))
 {
 case 128:





   return TARGET_POWER ? 5 : 4;
 case 129:


   if ((rs6000_cpu_attr == CPU_PPC603
        || rs6000_cpu_attr == CPU_PPC604
        || rs6000_cpu_attr == CPU_PPC604E
        || rs6000_cpu_attr == CPU_PPC620
        || rs6000_cpu_attr == CPU_PPC630
        || rs6000_cpu_attr == CPU_PPC750
        || rs6000_cpu_attr == CPU_PPC7400
        || rs6000_cpu_attr == CPU_PPC7450
        || rs6000_cpu_attr == CPU_POWER4
        || rs6000_cpu_attr == CPU_POWER5)
       && recog_memoized (dep_insn)
       && (INSN_CODE (dep_insn) >= 0)
       && (get_attr_type (dep_insn) == TYPE_CMP
    || get_attr_type (dep_insn) == TYPE_COMPARE
    || get_attr_type (dep_insn) == TYPE_DELAYED_COMPARE
    || get_attr_type (dep_insn) == TYPE_IMUL_COMPARE
    || get_attr_type (dep_insn) == TYPE_LMUL_COMPARE
    || get_attr_type (dep_insn) == TYPE_FPCOMPARE
    || get_attr_type (dep_insn) == TYPE_CR_LOGICAL
    || get_attr_type (dep_insn) == TYPE_DELAYED_CR))
     return cost + 2;
 default:
   break;
 }

    }

  return cost;
}
