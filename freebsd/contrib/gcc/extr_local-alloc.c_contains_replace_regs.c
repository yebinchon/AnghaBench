
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
struct TYPE_2__ {int replace; } ;







 int GET_CODE (int ) ;
 char* GET_RTX_FORMAT (int) ;
 int GET_RTX_LENGTH (int) ;




 size_t REGNO (int ) ;

 int XEXP (int ,int) ;
 int XVECEXP (int ,int,int) ;
 int XVECLEN (int ,int) ;
 TYPE_1__* reg_equiv ;

__attribute__((used)) static int
contains_replace_regs (rtx x)
{
  int i, j;
  const char *fmt;
  enum rtx_code code = GET_CODE (x);

  switch (code)
    {
    case 134:
    case 136:
    case 131:
    case 128:
    case 135:
    case 133:
    case 130:
    case 137:
    case 132:
      return 0;

    case 129:
      return reg_equiv[REGNO (x)].replace;

    default:
      break;
    }

  fmt = GET_RTX_FORMAT (code);
  for (i = GET_RTX_LENGTH (code) - 1; i >= 0; i--)
    switch (fmt[i])
      {
      case 'e':
 if (contains_replace_regs (XEXP (x, i)))
   return 1;
 break;
      case 'E':
 for (j = XVECLEN (x, i) - 1; j >= 0; j--)
   if (contains_replace_regs (XVECEXP (x, i, j)))
     return 1;
 break;
      }

  return 0;
}
