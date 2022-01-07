
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
struct TYPE_2__ {int replacement; } ;







 int GET_CODE (int ) ;
 char* GET_RTX_FORMAT (int) ;
 int GET_RTX_LENGTH (int) ;




 int MEM_P (int ) ;


 size_t REGNO (int ) ;

 int SET_DEST (int ) ;
 int SET_SRC (int ) ;

 int VOIDmode ;
 int XEXP (int ,int) ;
 int XVECEXP (int ,int,int) ;
 int XVECLEN (int ,int) ;
 TYPE_1__* reg_equiv ;
 int rtx_varies_p ;
 int true_dependence (int ,int ,int ,int ) ;

__attribute__((used)) static int
memref_referenced_p (rtx memref, rtx x)
{
  int i, j;
  const char *fmt;
  enum rtx_code code = GET_CODE (x);

  switch (code)
    {
    case 137:
    case 139:
    case 134:
    case 128:
    case 138:
    case 136:
    case 131:
    case 140:
    case 135:
    case 133:
      return 0;

    case 130:
      return (reg_equiv[REGNO (x)].replacement
       && memref_referenced_p (memref,
          reg_equiv[REGNO (x)].replacement));

    case 132:
      if (true_dependence (memref, VOIDmode, x, rtx_varies_p))
 return 1;
      break;

    case 129:


      if (MEM_P (SET_DEST (x)))
 {
   if (memref_referenced_p (memref, XEXP (SET_DEST (x), 0)))
     return 1;
 }
      else if (memref_referenced_p (memref, SET_DEST (x)))
 return 1;

      return memref_referenced_p (memref, SET_SRC (x));

    default:
      break;
    }

  fmt = GET_RTX_FORMAT (code);
  for (i = GET_RTX_LENGTH (code) - 1; i >= 0; i--)
    switch (fmt[i])
      {
      case 'e':
 if (memref_referenced_p (memref, XEXP (x, i)))
   return 1;
 break;
      case 'E':
 for (j = XVECLEN (x, i) - 1; j >= 0; j--)
   if (memref_referenced_p (memref, XVECEXP (x, i, j)))
     return 1;
 break;
      }

  return 0;
}
