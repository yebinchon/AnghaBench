
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum attr_type { ____Placeholder_attr_type } attr_type ;


 scalar_t__ CLOBBER ;
 scalar_t__ GET_CODE (int ) ;
 int INSN_P (int ) ;
 int PATTERN (int ) ;
 int TYPE_BRANCH ;
 int TYPE_JMPREG ;
 scalar_t__ USE ;
 int get_attr_type (int ) ;
 scalar_t__ rs6000_sched_groups ;

__attribute__((used)) static bool
is_branch_slot_insn (rtx insn)
{
  if (!insn || !INSN_P (insn)
      || GET_CODE (PATTERN (insn)) == USE
      || GET_CODE (PATTERN (insn)) == CLOBBER)
    return 0;

  if (rs6000_sched_groups)
    {
      enum attr_type type = get_attr_type (insn);
      if (type == TYPE_BRANCH || type == TYPE_JMPREG)
 return 1;
      return 0;
    }

  return 0;
}
