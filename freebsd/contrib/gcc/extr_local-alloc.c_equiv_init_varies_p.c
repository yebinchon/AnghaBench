
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int rtx ;
struct TYPE_2__ {int replace; } ;
typedef int RTX_CODE ;







 int GET_CODE (int ) ;
 char* GET_RTX_FORMAT (int) ;
 int GET_RTX_LENGTH (int) ;


 int MEM_READONLY_P (int ) ;
 int MEM_VOLATILE_P (int ) ;

 size_t REGNO (int ) ;

 int XEXP (int ,int) ;
 int XVECEXP (int ,int,int) ;
 int XVECLEN (int ,int) ;
 TYPE_1__* reg_equiv ;
 int rtx_varies_p (int ,int ) ;

__attribute__((used)) static int
equiv_init_varies_p (rtx x)
{
  RTX_CODE code = GET_CODE (x);
  int i;
  const char *fmt;

  switch (code)
    {
    case 130:
      return !MEM_READONLY_P (x) || equiv_init_varies_p (XEXP (x, 0));

    case 135:
    case 133:
    case 134:
    case 132:
    case 128:
    case 131:
      return 0;

    case 129:
      return reg_equiv[REGNO (x)].replace == 0 && rtx_varies_p (x, 0);

    case 136:
      if (MEM_VOLATILE_P (x))
 return 1;



    default:
      break;
    }

  fmt = GET_RTX_FORMAT (code);
  for (i = GET_RTX_LENGTH (code) - 1; i >= 0; i--)
    if (fmt[i] == 'e')
      {
 if (equiv_init_varies_p (XEXP (x, i)))
   return 1;
      }
    else if (fmt[i] == 'E')
      {
 int j;
 for (j = 0; j < XVECLEN (x, i); j++)
   if (equiv_init_varies_p (XVECEXP (x, i, j)))
     return 1;
      }

  return 0;
}
