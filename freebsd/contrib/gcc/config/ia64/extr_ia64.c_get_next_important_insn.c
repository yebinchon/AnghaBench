
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 scalar_t__ CLOBBER ;
 scalar_t__ GET_CODE (int ) ;
 scalar_t__ INSN_P (scalar_t__) ;
 scalar_t__ ITANIUM_CLASS_IGNORE ;
 scalar_t__ NEXT_INSN (scalar_t__) ;
 scalar_t__ NULL_RTX ;
 int PATTERN (scalar_t__) ;
 scalar_t__ USE ;
 scalar_t__ ia64_safe_itanium_class (scalar_t__) ;

__attribute__((used)) static rtx
get_next_important_insn (rtx insn, rtx tail)
{
  for (; insn && insn != tail; insn = NEXT_INSN (insn))
    if (INSN_P (insn)
 && ia64_safe_itanium_class (insn) != ITANIUM_CLASS_IGNORE
 && GET_CODE (PATTERN (insn)) != USE
 && GET_CODE (PATTERN (insn)) != CLOBBER)
      return insn;
  return NULL_RTX;
}
