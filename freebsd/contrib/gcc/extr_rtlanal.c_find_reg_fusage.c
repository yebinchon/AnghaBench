
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
 int REG_P (scalar_t__) ;
 scalar_t__ XEXP (scalar_t__,int) ;
 scalar_t__ find_regno_fusage (scalar_t__,int,unsigned int) ;
 int gcc_assert (scalar_t__) ;
 unsigned int** hard_regno_nregs ;
 scalar_t__ rtx_equal_p (scalar_t__,scalar_t__) ;

int
find_reg_fusage (rtx insn, enum rtx_code code, rtx datum)
{


  if (!CALL_P (insn))
    return 0;

  gcc_assert (datum);

  if (!REG_P (datum))
    {
      rtx link;

      for (link = CALL_INSN_FUNCTION_USAGE (insn);
    link;
    link = XEXP (link, 1))
 if (GET_CODE (XEXP (link, 0)) == code
     && rtx_equal_p (datum, XEXP (XEXP (link, 0), 0)))
   return 1;
    }
  else
    {
      unsigned int regno = REGNO (datum);




      if (regno < FIRST_PSEUDO_REGISTER)
 {
   unsigned int end_regno
     = regno + hard_regno_nregs[regno][GET_MODE (datum)];
   unsigned int i;

   for (i = regno; i < end_regno; i++)
     if (find_regno_fusage (insn, code, i))
       return 1;
 }
    }

  return 0;
}
