
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
 int GET_CODE (scalar_t__) ;
 char* GET_RTX_FORMAT (int) ;
 int GET_RTX_LENGTH (int) ;
 scalar_t__ XEXP (scalar_t__,int) ;
 scalar_t__ XVECEXP (scalar_t__,int,int) ;
 int XVECLEN (scalar_t__,int) ;
 scalar_t__ alloc_EXPR_LIST (int ,scalar_t__,scalar_t__) ;
 int gcc_unreachable () ;

__attribute__((used)) static rtx
extract_mentioned_regs_helper (rtx x, rtx accum)
{
  int i;
  enum rtx_code code;
  const char * fmt;


 repeat:

  if (x == 0)
    return accum;

  code = GET_CODE (x);
  switch (code)
    {
    case 129:
      return alloc_EXPR_LIST (0, x, accum);

    case 135:
      x = XEXP (x, 0);
      goto repeat;

    case 131:
    case 130:
    case 133:
    case 132:

      gcc_unreachable ();

    case 134:
    case 141:
    case 140:
    case 138:
    case 139:
    case 137:
    case 128:
    case 136:
    case 142:
    case 143:
      return accum;

    default:
      break;
    }

  i = GET_RTX_LENGTH (code) - 1;
  fmt = GET_RTX_FORMAT (code);

  for (; i >= 0; i--)
    {
      if (fmt[i] == 'e')
 {
   rtx tem = XEXP (x, i);



   if (i == 0)
     {
       x = tem;
       goto repeat;
     }

   accum = extract_mentioned_regs_helper (tem, accum);
 }
      else if (fmt[i] == 'E')
 {
   int j;

   for (j = 0; j < XVECLEN (x, i); j++)
     accum = extract_mentioned_regs_helper (XVECEXP (x, i, j), accum);
 }
    }

  return accum;
}
