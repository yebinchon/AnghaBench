
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef scalar_t__ RTX_CODE ;




 int FIRST_PSEUDO_REGISTER ;
 scalar_t__ GET_CODE (scalar_t__) ;
 size_t GET_MODE (scalar_t__) ;
 scalar_t__ GET_MODE_SIZE (size_t) ;
 char* GET_RTX_FORMAT (scalar_t__) ;
 int GET_RTX_LENGTH (scalar_t__) ;

 scalar_t__ POST_DEC ;
 scalar_t__ POST_INC ;
 scalar_t__ POST_MODIFY ;
 scalar_t__ PRE_DEC ;
 scalar_t__ PRE_INC ;
 scalar_t__ PRE_MODIFY ;
 scalar_t__ REG ;
 int REGNO (scalar_t__) ;
 scalar_t__ REG_P (scalar_t__) ;
 scalar_t__ SCALAR_INT_MODE_P (size_t) ;
 scalar_t__ SUBREG ;
 int SUBREG_BYTE (scalar_t__) ;
 scalar_t__ SUBREG_REG (scalar_t__) ;

 scalar_t__ UNITS_PER_WORD ;
 scalar_t__ WORDS_BIG_ENDIAN ;
 scalar_t__ XEXP (scalar_t__,int) ;
 int XINT (scalar_t__,int) ;
 int XSTR (scalar_t__,int ) ;
 scalar_t__ XVECEXP (scalar_t__,int,int) ;
 int XVECLEN (scalar_t__,int) ;
 int XWINT (scalar_t__,int) ;
 int gcc_unreachable () ;
 int** hard_regno_nregs ;
 scalar_t__ subreg_regno_offset (int,size_t,int ,size_t) ;

int
operands_match_p (rtx x, rtx y)
{
  int i;
  RTX_CODE code = GET_CODE (x);
  const char *fmt;
  int success_2;

  if (x == y)
    return 1;
  if ((code == REG || (code == SUBREG && REG_P (SUBREG_REG (x))))
      && (REG_P (y) || (GET_CODE (y) == SUBREG
      && REG_P (SUBREG_REG (y)))))
    {
      int j;

      if (code == SUBREG)
 {
   i = REGNO (SUBREG_REG (x));
   if (i >= FIRST_PSEUDO_REGISTER)
     goto slow;
   i += subreg_regno_offset (REGNO (SUBREG_REG (x)),
        GET_MODE (SUBREG_REG (x)),
        SUBREG_BYTE (x),
        GET_MODE (x));
 }
      else
 i = REGNO (x);

      if (GET_CODE (y) == SUBREG)
 {
   j = REGNO (SUBREG_REG (y));
   if (j >= FIRST_PSEUDO_REGISTER)
     goto slow;
   j += subreg_regno_offset (REGNO (SUBREG_REG (y)),
        GET_MODE (SUBREG_REG (y)),
        SUBREG_BYTE (y),
        GET_MODE (y));
 }
      else
 j = REGNO (y);





      if (WORDS_BIG_ENDIAN && GET_MODE_SIZE (GET_MODE (x)) > UNITS_PER_WORD
   && SCALAR_INT_MODE_P (GET_MODE (x))
   && i < FIRST_PSEUDO_REGISTER)
 i += hard_regno_nregs[i][GET_MODE (x)] - 1;
      if (WORDS_BIG_ENDIAN && GET_MODE_SIZE (GET_MODE (y)) > UNITS_PER_WORD
   && SCALAR_INT_MODE_P (GET_MODE (y))
   && j < FIRST_PSEUDO_REGISTER)
 j += hard_regno_nregs[j][GET_MODE (y)] - 1;

      return i == j;
    }





  if (code == POST_DEC || code == POST_INC || code == POST_MODIFY)
    return operands_match_p (XEXP (x, 0), y);






  if (GET_CODE (y) == PRE_DEC || GET_CODE (y) == PRE_INC
      || GET_CODE (y) == PRE_MODIFY)
    return operands_match_p (x, XEXP (y, 0)) ? 2 : 0;

 slow:



  if (code != GET_CODE (y))
    return 0;


  if (GET_MODE (x) != GET_MODE (y))
    return 0;

  switch (code)
    {
    case 130:
    case 131:
      return 0;

    case 129:
      return XEXP (x, 0) == XEXP (y, 0);
    case 128:
      return XSTR (x, 0) == XSTR (y, 0);

    default:
      break;
    }




  success_2 = 0;
  fmt = GET_RTX_FORMAT (code);
  for (i = GET_RTX_LENGTH (code) - 1; i >= 0; i--)
    {
      int val, j;
      switch (fmt[i])
 {
 case 'w':
   if (XWINT (x, i) != XWINT (y, i))
     return 0;
   break;

 case 'i':
   if (XINT (x, i) != XINT (y, i))
     return 0;
   break;

 case 'e':
   val = operands_match_p (XEXP (x, i), XEXP (y, i));
   if (val == 0)
     return 0;


   if (val == 2)
     success_2 = 1;
   break;

 case '0':
   break;

 case 'E':
   if (XVECLEN (x, i) != XVECLEN (y, i))
     return 0;
   for (j = XVECLEN (x, i) - 1; j >= 0; --j)
     {
       val = operands_match_p (XVECEXP (x, i, j), XVECEXP (y, i, j));
       if (val == 0)
  return 0;
       if (val == 2)
  success_2 = 1;
     }
   break;




 default:
   gcc_unreachable ();
 }
    }
  return 1 + success_2;
}
