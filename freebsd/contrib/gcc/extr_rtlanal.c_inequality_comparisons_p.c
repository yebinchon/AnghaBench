
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
 int GET_CODE (int ) ;
 char* GET_RTX_FORMAT (int) ;
 int GET_RTX_LENGTH (int) ;
 int XEXP (int ,int) ;
 int XVECEXP (int ,int,int) ;
 int XVECLEN (int ,int) ;

int
inequality_comparisons_p (rtx x)
{
  const char *fmt;
  int len, i;
  enum rtx_code code = GET_CODE (x);

  switch (code)
    {
    case 130:
    case 129:
    case 131:
    case 145:
    case 142:
    case 143:
    case 141:
    case 144:
    case 136:
    case 128:
      return 0;

    case 133:
    case 132:
    case 138:
    case 137:
    case 135:
    case 134:
    case 140:
    case 139:
      return 1;

    default:
      break;
    }

  len = GET_RTX_LENGTH (code);
  fmt = GET_RTX_FORMAT (code);

  for (i = 0; i < len; i++)
    {
      if (fmt[i] == 'e')
 {
   if (inequality_comparisons_p (XEXP (x, i)))
     return 1;
 }
      else if (fmt[i] == 'E')
 {
   int j;
   for (j = XVECLEN (x, i) - 1; j >= 0; j--)
     if (inequality_comparisons_p (XVECEXP (x, i, j)))
       return 1;
 }
    }

  return 0;
}
