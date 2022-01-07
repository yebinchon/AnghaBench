
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 scalar_t__ GENERAL_REGS ;
 scalar_t__ GET_CODE (scalar_t__) ;
 scalar_t__ INSN ;
 scalar_t__ MEM ;
 scalar_t__ NULL_RTX ;
 scalar_t__ PATTERN (scalar_t__) ;
 scalar_t__ REG ;
 int REGNO (scalar_t__) ;
 scalar_t__ REGNO_REG_CLASS (int ) ;
 scalar_t__ REG_OR_SUBREG_RTX (scalar_t__) ;
 scalar_t__ SET ;
 scalar_t__ SYMBOL_REF ;
 scalar_t__ XEXP (scalar_t__,int) ;
 scalar_t__ note_invalid_constants (scalar_t__,int,int) ;

__attribute__((used)) static bool
arm_memory_load_p (rtx insn)
{
  rtx body, lhs, rhs;;

  if (insn == NULL_RTX || GET_CODE (insn) != INSN)
    return 0;

  body = PATTERN (insn);

  if (GET_CODE (body) != SET)
    return 0;

  lhs = XEXP (body, 0);
  rhs = XEXP (body, 1);

  lhs = REG_OR_SUBREG_RTX (lhs);



  if (GET_CODE (lhs) != REG
      || REGNO_REG_CLASS (REGNO (lhs)) != GENERAL_REGS)
    return 0;




  return (GET_CODE (rhs) == MEM
   || GET_CODE (rhs) == SYMBOL_REF
   || note_invalid_constants (insn, -1, 0));
}
