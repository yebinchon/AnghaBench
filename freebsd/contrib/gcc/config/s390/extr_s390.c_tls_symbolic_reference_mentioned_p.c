
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ GET_CODE (int ) ;
 char* GET_RTX_FORMAT (scalar_t__) ;
 int GET_RTX_LENGTH (scalar_t__) ;
 scalar_t__ SYMBOL_REF ;
 int XEXP (int ,int) ;
 int XVECEXP (int ,int,int) ;
 int XVECLEN (int ,int) ;
 int tls_symbolic_operand (int ) ;

bool
tls_symbolic_reference_mentioned_p (rtx op)
{
  const char *fmt;
  int i;

  if (GET_CODE (op) == SYMBOL_REF)
    return tls_symbolic_operand (op);

  fmt = GET_RTX_FORMAT (GET_CODE (op));
  for (i = GET_RTX_LENGTH (GET_CODE (op)) - 1; i >= 0; i--)
    {
      if (fmt[i] == 'E')
 {
   int j;

   for (j = XVECLEN (op, i) - 1; j >= 0; j--)
     if (tls_symbolic_reference_mentioned_p (XVECEXP (op, i, j)))
       return 1;
 }

      else if (fmt[i] == 'e' && tls_symbolic_reference_mentioned_p (XEXP (op, i)))
 return 1;
    }

  return 0;
}
