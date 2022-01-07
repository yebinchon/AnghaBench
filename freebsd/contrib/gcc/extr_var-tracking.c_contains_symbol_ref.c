
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef scalar_t__ RTX_CODE ;


 scalar_t__ GET_CODE (int ) ;
 char* GET_RTX_FORMAT (scalar_t__) ;
 int GET_RTX_LENGTH (scalar_t__) ;
 scalar_t__ SYMBOL_REF ;
 int XEXP (int ,int) ;
 int XVECEXP (int ,int,int) ;
 int XVECLEN (int ,int) ;

__attribute__((used)) static bool
contains_symbol_ref (rtx x)
{
  const char *fmt;
  RTX_CODE code;
  int i;

  if (!x)
    return 0;

  code = GET_CODE (x);
  if (code == SYMBOL_REF)
    return 1;

  fmt = GET_RTX_FORMAT (code);
  for (i = GET_RTX_LENGTH (code) - 1; i >= 0; i--)
    {
      if (fmt[i] == 'e')
 {
   if (contains_symbol_ref (XEXP (x, i)))
     return 1;
 }
      else if (fmt[i] == 'E')
 {
   int j;
   for (j = 0; j < XVECLEN (x, i); j++)
     if (contains_symbol_ref (XVECEXP (x, i, j)))
       return 1;
 }
    }

  return 0;
}
