
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef enum attr_vr4130_class { ____Placeholder_attr_vr4130_class } attr_vr4130_class ;


 scalar_t__ INSN_DEPEND (scalar_t__) ;
 scalar_t__ INSN_PRIORITY (scalar_t__) ;
 scalar_t__ REG_DEP_ANTI ;
 scalar_t__ REG_NOTE_KIND (scalar_t__) ;
 scalar_t__ VR4130_CLASS_ALU ;
 scalar_t__ XEXP (scalar_t__,int) ;
 int get_attr_vr4130_class (scalar_t__) ;
 scalar_t__ recog_memoized (scalar_t__) ;
 scalar_t__ vr4130_last_insn ;
 int vr4130_true_reg_dependence_p (scalar_t__) ;

__attribute__((used)) static bool
vr4130_swap_insns_p (rtx insn1, rtx insn2)
{
  rtx dep;
  for (dep = INSN_DEPEND (insn1); dep != 0; dep = XEXP (dep, 1))
    if (REG_NOTE_KIND (dep) == REG_DEP_ANTI
 && INSN_PRIORITY (XEXP (dep, 0)) > INSN_PRIORITY (insn2)
 && recog_memoized (XEXP (dep, 0)) >= 0
 && get_attr_vr4130_class (XEXP (dep, 0)) == VR4130_CLASS_ALU)
      return 0;

  if (vr4130_last_insn != 0
      && recog_memoized (insn1) >= 0
      && recog_memoized (insn2) >= 0)
    {



      enum attr_vr4130_class class1 = get_attr_vr4130_class (insn1);
      enum attr_vr4130_class class2 = get_attr_vr4130_class (insn2);
      if (class1 != class2 || class1 == VR4130_CLASS_ALU)
 {


   bool dep1 = vr4130_true_reg_dependence_p (insn1);
   bool dep2 = vr4130_true_reg_dependence_p (insn2);
   if (dep1 != dep2)
     return dep1;





   if (class1 != VR4130_CLASS_ALU
       && recog_memoized (vr4130_last_insn) >= 0
       && class1 == get_attr_vr4130_class (vr4130_last_insn))
     return 1;
 }
    }
  return 0;
}
