
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum group_termination { ____Placeholder_group_termination } group_termination ;
typedef enum attr_type { ____Placeholder_attr_type } attr_type ;


 int current_group ;
 int get_attr_type (int ) ;
 scalar_t__ is_branch_slot_insn (int ) ;
 scalar_t__ is_dispatch_slot_restricted (int ) ;
 scalar_t__ is_microcoded_insn (int ) ;
 int previous_group ;

__attribute__((used)) static bool
insn_terminates_group_p (rtx insn, enum group_termination which_group)
{
  enum attr_type type;

  if (! insn)
    return 0;

  type = get_attr_type (insn);

  if (is_microcoded_insn (insn))
    return 1;

  if (which_group == current_group)
    {
      if (is_branch_slot_insn (insn))
 return 1;
      return 0;
    }
  else if (which_group == previous_group)
    {
      if (is_dispatch_slot_restricted (insn))
 return 1;
      return 0;
    }

  return 0;
}
