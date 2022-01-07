
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ GET_CODE (int ) ;
 char* GET_RTX_FORMAT (scalar_t__) ;
 int GET_RTX_LENGTH (scalar_t__) ;
 scalar_t__ SYMBOL_REF ;
 scalar_t__ UNSPEC ;
 scalar_t__ UNSPEC_TLS ;
 int XEXP (int ,int) ;
 scalar_t__ XINT (int ,int) ;
 int XVECEXP (int ,int,int) ;
 int XVECLEN (int ,int) ;

int
symbol_mentioned_p (rtx x)
{
  const char * fmt;
  int i;

  if (GET_CODE (x) == SYMBOL_REF)
    return 1;



  if (GET_CODE (x) == UNSPEC && XINT (x, 1) == UNSPEC_TLS)
    return 0;

  fmt = GET_RTX_FORMAT (GET_CODE (x));

  for (i = GET_RTX_LENGTH (GET_CODE (x)) - 1; i >= 0; i--)
    {
      if (fmt[i] == 'E')
 {
   int j;

   for (j = XVECLEN (x, i) - 1; j >= 0; j--)
     if (symbol_mentioned_p (XVECEXP (x, i, j)))
       return 1;
 }
      else if (fmt[i] == 'e' && symbol_mentioned_p (XEXP (x, i)))
 return 1;
    }

  return 0;
}
