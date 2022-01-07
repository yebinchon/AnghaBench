
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;


 scalar_t__ COMMUTATIVE_P (scalar_t__) ;


 int GET_CODE (scalar_t__) ;
 scalar_t__ GET_MODE (scalar_t__) ;
 char* GET_RTX_FORMAT (int) ;
 int GET_RTX_LENGTH (int) ;

 scalar_t__ NON_COMMUTATIVE_P (scalar_t__) ;
 int PLUS ;

 int REGNO (scalar_t__) ;

 scalar_t__ UNARY_P (scalar_t__) ;

 scalar_t__ XEXP (scalar_t__,int) ;
 int XINT (scalar_t__,int) ;
 int XSTR (scalar_t__,int) ;
 scalar_t__ XVECEXP (scalar_t__,int,int) ;
 int XVECLEN (scalar_t__,int) ;
 scalar_t__ canon_rtx (scalar_t__) ;
 int gcc_unreachable () ;
 int strcmp (int ,int ) ;

__attribute__((used)) static int
rtx_equal_for_memref_p (rtx x, rtx y)
{
  int i;
  int j;
  enum rtx_code code;
  const char *fmt;

  if (x == 0 && y == 0)
    return 1;
  if (x == 0 || y == 0)
    return 0;

  if (x == y)
    return 1;

  code = GET_CODE (x);

  if (code != GET_CODE (y))
    return 0;




  if (GET_MODE (x) != GET_MODE (y))
    return 0;


  switch (code)
    {
    case 130:
      return REGNO (x) == REGNO (y);

    case 131:
      return XEXP (x, 0) == XEXP (y, 0);

    case 129:
      return XSTR (x, 0) == XSTR (y, 0);

    case 128:
    case 132:
    case 133:



      return 0;

    default:
      break;
    }


  if (code == PLUS)
    return ((rtx_equal_for_memref_p (XEXP (x, 0), XEXP (y, 0))
      && rtx_equal_for_memref_p (XEXP (x, 1), XEXP (y, 1)))
     || (rtx_equal_for_memref_p (XEXP (x, 0), XEXP (y, 1))
  && rtx_equal_for_memref_p (XEXP (x, 1), XEXP (y, 0))));


  if (COMMUTATIVE_P (x))
    {
      rtx xop0 = canon_rtx (XEXP (x, 0));
      rtx yop0 = canon_rtx (XEXP (y, 0));
      rtx yop1 = canon_rtx (XEXP (y, 1));

      return ((rtx_equal_for_memref_p (xop0, yop0)
        && rtx_equal_for_memref_p (canon_rtx (XEXP (x, 1)), yop1))
       || (rtx_equal_for_memref_p (xop0, yop1)
    && rtx_equal_for_memref_p (canon_rtx (XEXP (x, 1)), yop0)));
    }
  else if (NON_COMMUTATIVE_P (x))
    {
      return (rtx_equal_for_memref_p (canon_rtx (XEXP (x, 0)),
          canon_rtx (XEXP (y, 0)))
       && rtx_equal_for_memref_p (canon_rtx (XEXP (x, 1)),
      canon_rtx (XEXP (y, 1))));
    }
  else if (UNARY_P (x))
    return rtx_equal_for_memref_p (canon_rtx (XEXP (x, 0)),
       canon_rtx (XEXP (y, 0)));






  fmt = GET_RTX_FORMAT (code);
  for (i = GET_RTX_LENGTH (code) - 1; i >= 0; i--)
    {
      switch (fmt[i])
 {
 case 'i':
   if (XINT (x, i) != XINT (y, i))
     return 0;
   break;

 case 'E':

   if (XVECLEN (x, i) != XVECLEN (y, i))
     return 0;


   for (j = 0; j < XVECLEN (x, i); j++)
     if (rtx_equal_for_memref_p (canon_rtx (XVECEXP (x, i, j)),
     canon_rtx (XVECEXP (y, i, j))) == 0)
       return 0;
   break;

 case 'e':
   if (rtx_equal_for_memref_p (canon_rtx (XEXP (x, i)),
          canon_rtx (XEXP (y, i))) == 0)
     return 0;
   break;


 case 's':
   if (strcmp (XSTR (x, i), XSTR (y, i)))
     return 0;
   break;


 case '0':
   break;




 default:
   gcc_unreachable ();
 }
    }
  return 1;
}
