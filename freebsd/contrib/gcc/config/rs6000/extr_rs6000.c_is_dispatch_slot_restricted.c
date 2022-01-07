
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef enum attr_type { ____Placeholder_attr_type } attr_type ;


 scalar_t__ CLOBBER ;
 scalar_t__ GET_CODE (scalar_t__) ;
 scalar_t__ NOTE ;
 scalar_t__ NULL_RTX ;
 scalar_t__ PATTERN (scalar_t__) ;
 int PROCESSOR_POWER5 ;
 scalar_t__ USE ;
 int get_attr_type (scalar_t__) ;
 int is_cracked_insn (scalar_t__) ;
 int rs6000_cpu ;
 int rs6000_sched_groups ;

__attribute__((used)) static int
is_dispatch_slot_restricted (rtx insn)
{
  enum attr_type type;

  if (!rs6000_sched_groups)
    return 0;

  if (!insn
      || insn == NULL_RTX
      || GET_CODE (insn) == NOTE
      || GET_CODE (PATTERN (insn)) == USE
      || GET_CODE (PATTERN (insn)) == CLOBBER)
    return 0;

  type = get_attr_type (insn);

  switch (type)
    {
    case 134:
    case 133:
    case 131:
    case 139:
    case 140:
    case 130:
    case 132:
      return 1;
    case 138:
    case 136:
      return 2;
    case 135:
    case 129:
    case 137:
    case 128:
      return 4;
    default:
      if (rs6000_cpu == PROCESSOR_POWER5
   && is_cracked_insn (insn))
 return 2;
      return 0;
    }
}
