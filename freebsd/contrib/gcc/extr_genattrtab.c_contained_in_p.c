
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int GET_CODE (int ) ;
 char* GET_RTX_FORMAT (int ) ;
 int GET_RTX_LENGTH (int ) ;
 int XEXP (int ,int) ;
 int XVECEXP (int ,int,int) ;
 int XVECLEN (int ,int) ;
 scalar_t__ rtx_equal_p (int ,int ) ;

__attribute__((used)) static int
contained_in_p (rtx inner, rtx exp)
{
  int i, j;
  const char *fmt;

  if (rtx_equal_p (inner, exp))
    return 1;

  for (i = 0, fmt = GET_RTX_FORMAT (GET_CODE (exp));
       i < GET_RTX_LENGTH (GET_CODE (exp)); i++)
    switch (*fmt++)
      {
      case 'e':
      case 'u':
 if (contained_in_p (inner, XEXP (exp, i)))
   return 1;
 break;

      case 'E':
 for (j = 0; j < XVECLEN (exp, i); j++)
   if (contained_in_p (inner, XVECEXP (exp, i, j)))
     return 1;
 break;
      }

  return 0;
}
