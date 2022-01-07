
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;




 scalar_t__ ASM_OPERANDS_INPUT (scalar_t__,int) ;
 int ASM_OPERANDS_INPUT_CONSTRAINT (scalar_t__,int) ;
 int ASM_OPERANDS_INPUT_LENGTH (scalar_t__) ;
 int ASM_OPERANDS_OUTPUT_CONSTRAINT (scalar_t__) ;
 int ASM_OPERANDS_OUTPUT_IDX (scalar_t__) ;
 int ASM_OPERANDS_TEMPLATE (scalar_t__) ;




 unsigned int FIRST_PSEUDO_REGISTER ;
 int GET_CODE (scalar_t__) ;
 scalar_t__ GET_MODE (scalar_t__) ;
 char* GET_RTX_FORMAT (int) ;
 int GET_RTX_LENGTH (int) ;



 int MEM_ATTRS (scalar_t__) ;
 int MEM_VOLATILE_P (scalar_t__) ;





 unsigned int REGNO (scalar_t__) ;
 int REG_IN_TABLE (unsigned int) ;
 int REG_QTY (unsigned int) ;
 int REG_TICK (unsigned int) ;

 scalar_t__ XEXP (scalar_t__,int) ;
 int XINT (scalar_t__,int) ;

 int XSTR (scalar_t__,int) ;
 scalar_t__ XVECEXP (scalar_t__,int,int) ;
 int XVECLEN (scalar_t__,int) ;
 int XWINT (scalar_t__,int) ;
 int gcc_unreachable () ;
 int** hard_regno_nregs ;
 int strcmp (int ,int ) ;

int
exp_equiv_p (rtx x, rtx y, int validate, bool for_gcse)
{
  int i, j;
  enum rtx_code code;
  const char *fmt;



  if (x == y && !validate)
    return 1;

  if (x == 0 || y == 0)
    return x == y;

  code = GET_CODE (x);
  if (code != GET_CODE (y))
    return 0;


  if (GET_MODE (x) != GET_MODE (y))
    return 0;

  switch (code)
    {
    case 132:
    case 141:
    case 139:
    case 140:
      return x == y;

    case 136:
      return XEXP (x, 0) == XEXP (y, 0);

    case 129:
      return XSTR (x, 0) == XSTR (y, 0);

    case 130:
      if (for_gcse)
 return REGNO (x) == REGNO (y);
      else
 {
   unsigned int regno = REGNO (y);
   unsigned int i;
   unsigned int endregno
     = regno + (regno >= FIRST_PSEUDO_REGISTER ? 1
         : hard_regno_nregs[regno][GET_MODE (y)]);





   if (REG_QTY (REGNO (x)) != REG_QTY (regno))
     return 0;

   if (! validate)
     return 1;

   for (i = regno; i < endregno; i++)
     if (REG_IN_TABLE (i) != REG_TICK (i))
       return 0;

   return 1;
 }

    case 135:
      if (for_gcse)
 {


   if (MEM_VOLATILE_P (x) || MEM_VOLATILE_P (y))
     return 0;
   if (MEM_ATTRS (x) != MEM_ATTRS (y))
     return 0;
 }
      break;


    case 131:
    case 134:
    case 143:
    case 137:
    case 128:
    case 133:
    case 138:
      return ((exp_equiv_p (XEXP (x, 0), XEXP (y, 0),
        validate, for_gcse)
        && exp_equiv_p (XEXP (x, 1), XEXP (y, 1),
    validate, for_gcse))
       || (exp_equiv_p (XEXP (x, 0), XEXP (y, 1),
    validate, for_gcse)
    && exp_equiv_p (XEXP (x, 1), XEXP (y, 0),
       validate, for_gcse)));

    case 142:




      if (MEM_VOLATILE_P (x) || MEM_VOLATILE_P (y))
 return 0;

      if (GET_MODE (x) != GET_MODE (y)
   || strcmp (ASM_OPERANDS_TEMPLATE (x), ASM_OPERANDS_TEMPLATE (y))
   || strcmp (ASM_OPERANDS_OUTPUT_CONSTRAINT (x),
       ASM_OPERANDS_OUTPUT_CONSTRAINT (y))
   || ASM_OPERANDS_OUTPUT_IDX (x) != ASM_OPERANDS_OUTPUT_IDX (y)
   || ASM_OPERANDS_INPUT_LENGTH (x) != ASM_OPERANDS_INPUT_LENGTH (y))
 return 0;

      if (ASM_OPERANDS_INPUT_LENGTH (x))
 {
   for (i = ASM_OPERANDS_INPUT_LENGTH (x) - 1; i >= 0; i--)
     if (! exp_equiv_p (ASM_OPERANDS_INPUT (x, i),
          ASM_OPERANDS_INPUT (y, i),
          validate, for_gcse)
  || strcmp (ASM_OPERANDS_INPUT_CONSTRAINT (x, i),
      ASM_OPERANDS_INPUT_CONSTRAINT (y, i)))
       return 0;
 }

      return 1;

    default:
      break;
    }




  fmt = GET_RTX_FORMAT (code);
  for (i = GET_RTX_LENGTH (code) - 1; i >= 0; i--)
    {
      switch (fmt[i])
 {
 case 'e':
   if (! exp_equiv_p (XEXP (x, i), XEXP (y, i),
         validate, for_gcse))
     return 0;
   break;

 case 'E':
   if (XVECLEN (x, i) != XVECLEN (y, i))
     return 0;
   for (j = 0; j < XVECLEN (x, i); j++)
     if (! exp_equiv_p (XVECEXP (x, i, j), XVECEXP (y, i, j),
    validate, for_gcse))
       return 0;
   break;

 case 's':
   if (strcmp (XSTR (x, i), XSTR (y, i)))
     return 0;
   break;

 case 'i':
   if (XINT (x, i) != XINT (y, i))
     return 0;
   break;

 case 'w':
   if (XWINT (x, i) != XWINT (y, i))
     return 0;
   break;

 case '0':
 case 't':
   break;

 default:
   gcc_unreachable ();
 }
    }

  return 1;
}
