
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
 int GET_CODE (int ) ;
 char* GET_RTX_FORMAT (int) ;
 int GET_RTX_LENGTH (int) ;


 int MEM_READONLY_P (int ) ;
 int MEM_VOLATILE_P (int ) ;




 int XEXP (int ,int) ;
 int XVECEXP (int ,int,int) ;
 int XVECLEN (int ,int) ;

__attribute__((used)) static bool
check_maybe_invariant (rtx x)
{
  enum rtx_code code = GET_CODE (x);
  int i, j;
  const char *fmt;

  switch (code)
    {
    case 134:
    case 135:
    case 129:
    case 136:
    case 133:
      return 1;

    case 131:
    case 137:
    case 128:
    case 138:
      return 0;

    case 130:
      return 1;

    case 132:





      if (MEM_READONLY_P (x))
 break;

      return 0;

    case 139:

      if (MEM_VOLATILE_P (x))
 return 0;
      break;

    default:
      break;
    }

  fmt = GET_RTX_FORMAT (code);
  for (i = GET_RTX_LENGTH (code) - 1; i >= 0; i--)
    {
      if (fmt[i] == 'e')
 {
   if (!check_maybe_invariant (XEXP (x, i)))
     return 0;
 }
      else if (fmt[i] == 'E')
 {
   for (j = 0; j < XVECLEN (x, i); j++)
     if (!check_maybe_invariant (XVECEXP (x, i, j)))
       return 0;
 }
    }

  return 1;
}
