
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ CLOBBER ;
 scalar_t__ GET_CODE (int ) ;
 int PATTERN (int ) ;
 scalar_t__ REG_FUNCTION_VALUE_P (int ) ;
 scalar_t__ REG_P (int ) ;
 int XEXP (int ,int ) ;
 scalar_t__ active_insn_p (int ) ;

__attribute__((used)) static bool
flow_active_insn_p (rtx insn)
{
  if (active_insn_p (insn))
    return 1;






  if (GET_CODE (PATTERN (insn)) == CLOBBER
      && REG_P (XEXP (PATTERN (insn), 0))
      && REG_FUNCTION_VALUE_P (XEXP (PATTERN (insn), 0)))
    return 1;

  return 0;
}
