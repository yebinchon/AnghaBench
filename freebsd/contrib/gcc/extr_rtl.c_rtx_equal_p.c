
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;




 int GET_CODE (scalar_t__) ;
 scalar_t__ GET_MODE (scalar_t__) ;
 char* GET_RTX_FORMAT (int) ;
 int GET_RTX_LENGTH (int) ;


 int REGNO (scalar_t__) ;


 scalar_t__ XEXP (scalar_t__,int) ;
 int XINT (scalar_t__,int) ;
 int XSTR (scalar_t__,int) ;
 scalar_t__ XVECEXP (scalar_t__,int,int) ;
 int XVECLEN (scalar_t__,int) ;
 int XWINT (scalar_t__,int) ;
 int gcc_unreachable () ;
 int strcmp (int ,int ) ;

int
rtx_equal_p (rtx x, rtx y)
{
  int i;
  int j;
  enum rtx_code code;
  const char *fmt;

  if (x == y)
    return 1;
  if (x == 0 || y == 0)
    return 0;

  code = GET_CODE (x);

  if (code != GET_CODE (y))
    return 0;




  if (GET_MODE (x) != GET_MODE (y))
    return 0;


  switch (code)
    {
    case 130:
      return (REGNO (x) == REGNO (y));

    case 131:
      return XEXP (x, 0) == XEXP (y, 0);

    case 128:
      return XSTR (x, 0) == XSTR (y, 0);

    case 129:
    case 133:
    case 132:
      return 0;

    default:
      break;
    }




  fmt = GET_RTX_FORMAT (code);
  for (i = GET_RTX_LENGTH (code) - 1; i >= 0; i--)
    {
      switch (fmt[i])
 {
 case 'w':
   if (XWINT (x, i) != XWINT (y, i))
     return 0;
   break;

 case 'n':
 case 'i':
   if (XINT (x, i) != XINT (y, i))
     return 0;
   break;

 case 'V':
 case 'E':

   if (XVECLEN (x, i) != XVECLEN (y, i))
     return 0;


   for (j = 0; j < XVECLEN (x, i); j++)
     if (rtx_equal_p (XVECEXP (x, i, j), XVECEXP (y, i, j)) == 0)
       return 0;
   break;

 case 'e':
   if (rtx_equal_p (XEXP (x, i), XEXP (y, i)) == 0)
     return 0;
   break;

 case 'S':
 case 's':
   if ((XSTR (x, i) || XSTR (y, i))
       && (! XSTR (x, i) || ! XSTR (y, i)
    || strcmp (XSTR (x, i), XSTR (y, i))))
     return 0;
   break;

 case 'u':

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
