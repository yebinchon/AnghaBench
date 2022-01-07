
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int GET_CODE (int ) ;
 char* GET_RTX_FORMAT (int ) ;
 int GET_RTX_LENGTH (int ) ;
 int NULL_RTX ;
 unsigned int REGNO (int ) ;
 scalar_t__ REG_P (int ) ;
 int XEXP (int ,int) ;
 int XVECEXP (int ,int,int) ;
 int XVECLEN (int ,int) ;

rtx
regno_use_in (unsigned int regno, rtx x)
{
  const char *fmt;
  int i, j;
  rtx tem;

  if (REG_P (x) && REGNO (x) == regno)
    return x;

  fmt = GET_RTX_FORMAT (GET_CODE (x));
  for (i = GET_RTX_LENGTH (GET_CODE (x)) - 1; i >= 0; i--)
    {
      if (fmt[i] == 'e')
 {
   if ((tem = regno_use_in (regno, XEXP (x, i))))
     return tem;
 }
      else if (fmt[i] == 'E')
 for (j = XVECLEN (x, i) - 1; j >= 0; j--)
   if ((tem = regno_use_in (regno , XVECEXP (x, i, j))))
     return tem;
    }

  return NULL_RTX;
}
