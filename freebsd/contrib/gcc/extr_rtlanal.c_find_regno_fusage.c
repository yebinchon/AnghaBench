
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;


 scalar_t__ CALL_INSN_FUNCTION_USAGE (scalar_t__) ;
 int CALL_P (scalar_t__) ;
 unsigned int FIRST_PSEUDO_REGISTER ;
 int GET_CODE (scalar_t__) ;
 size_t GET_MODE (scalar_t__) ;
 unsigned int REGNO (scalar_t__) ;
 scalar_t__ REG_P (scalar_t__) ;
 scalar_t__ XEXP (scalar_t__,int) ;
 unsigned int** hard_regno_nregs ;

int
find_regno_fusage (rtx insn, enum rtx_code code, unsigned int regno)
{
  rtx link;




  if (regno >= FIRST_PSEUDO_REGISTER
      || !CALL_P (insn) )
    return 0;

  for (link = CALL_INSN_FUNCTION_USAGE (insn); link; link = XEXP (link, 1))
    {
      unsigned int regnote;
      rtx op, reg;

      if (GET_CODE (op = XEXP (link, 0)) == code
   && REG_P (reg = XEXP (op, 0))
   && (regnote = REGNO (reg)) <= regno
   && regnote + hard_regno_nregs[regnote][GET_MODE (reg)] > regno)
 return 1;
    }

  return 0;
}
