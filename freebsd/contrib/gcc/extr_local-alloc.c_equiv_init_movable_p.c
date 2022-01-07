
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
struct TYPE_2__ {int replace; int loop_depth; } ;





 int GET_CODE (int ) ;
 char* GET_RTX_FORMAT (int) ;
 int GET_RTX_LENGTH (int) ;
 int MEM_VOLATILE_P (int ) ;







 size_t REGNO (int ) ;
 int REG_BASIC_BLOCK (size_t) ;

 int SET_SRC (int ) ;

 int XEXP (int ,int) ;
 int XVECEXP (int ,int,int) ;
 int XVECLEN (int ,int) ;
 TYPE_1__* reg_equiv ;
 int rtx_varies_p (int ,int ) ;

__attribute__((used)) static int
equiv_init_movable_p (rtx x, int regno)
{
  int i, j;
  const char *fmt;
  enum rtx_code code = GET_CODE (x);

  switch (code)
    {
    case 129:
      return equiv_init_movable_p (SET_SRC (x), regno);

    case 138:
    case 137:
      return 0;

    case 132:
    case 133:
    case 135:
    case 136:
    case 131:
    case 134:
      return 0;

    case 130:
      return (reg_equiv[REGNO (x)].loop_depth >= reg_equiv[regno].loop_depth
       && reg_equiv[REGNO (x)].replace)
      || (REG_BASIC_BLOCK (REGNO (x)) < 0 && ! rtx_varies_p (x, 0));

    case 128:
      return 0;

    case 139:
      if (MEM_VOLATILE_P (x))
 return 0;



    default:
      break;
    }

  fmt = GET_RTX_FORMAT (code);
  for (i = GET_RTX_LENGTH (code) - 1; i >= 0; i--)
    switch (fmt[i])
      {
      case 'e':
 if (! equiv_init_movable_p (XEXP (x, i), regno))
   return 0;
 break;
      case 'E':
 for (j = XVECLEN (x, i) - 1; j >= 0; j--)
   if (! equiv_init_movable_p (XVECEXP (x, i, j), regno))
     return 0;
 break;
      }

  return 1;
}
