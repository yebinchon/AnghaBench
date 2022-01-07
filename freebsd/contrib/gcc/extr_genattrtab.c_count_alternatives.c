
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ GET_CODE (int ) ;
 char* GET_RTX_FORMAT (scalar_t__) ;
 int GET_RTX_LENGTH (scalar_t__) ;
 scalar_t__ MATCH_OPERAND ;
 int XEXP (int ,int) ;
 int XSTR (int ,int) ;
 int * XVEC (int ,int) ;
 int XVECEXP (int ,int,int) ;
 int XVECLEN (int ,int) ;
 int n_comma_elts (int ) ;

__attribute__((used)) static int
count_alternatives (rtx exp)
{
  int i, j, n;
  const char *fmt;

  if (GET_CODE (exp) == MATCH_OPERAND)
    return n_comma_elts (XSTR (exp, 2));

  for (i = 0, fmt = GET_RTX_FORMAT (GET_CODE (exp));
       i < GET_RTX_LENGTH (GET_CODE (exp)); i++)
    switch (*fmt++)
      {
      case 'e':
      case 'u':
 n = count_alternatives (XEXP (exp, i));
 if (n)
   return n;
 break;

      case 'E':
      case 'V':
 if (XVEC (exp, i) != ((void*)0))
   for (j = 0; j < XVECLEN (exp, i); j++)
     {
       n = count_alternatives (XVECEXP (exp, i, j));
       if (n)
  return n;
     }
      }

  return 0;
}
