
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum reg_note { ____Placeholder_reg_note } reg_note ;
typedef enum attr_itanium_class { ____Placeholder_attr_itanium_class } attr_itanium_class ;


 int ITANIUM_CLASS_ST ;
 int ITANIUM_CLASS_STF ;
 int REG_DEP_OUTPUT ;
 int ia64_safe_itanium_class (int ) ;

__attribute__((used)) static int
ia64_adjust_cost_2 (rtx insn, int dep_type1, rtx dep_insn, int cost)
{
  enum reg_note dep_type = (enum reg_note) dep_type1;
  enum attr_itanium_class dep_class;
  enum attr_itanium_class insn_class;

  if (dep_type != REG_DEP_OUTPUT)
    return cost;

  insn_class = ia64_safe_itanium_class (insn);
  dep_class = ia64_safe_itanium_class (dep_insn);
  if (dep_class == ITANIUM_CLASS_ST || dep_class == ITANIUM_CLASS_STF
      || insn_class == ITANIUM_CLASS_ST || insn_class == ITANIUM_CLASS_STF)
    return 0;

  return cost;
}
