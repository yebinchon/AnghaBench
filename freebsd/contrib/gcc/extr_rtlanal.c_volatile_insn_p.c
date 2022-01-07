
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef int RTX_CODE ;
 int GET_CODE (int ) ;
 char* GET_RTX_FORMAT (int) ;
 int GET_RTX_LENGTH (int) ;


 int MEM_VOLATILE_P (int ) ;





 int XEXP (int ,int) ;
 int XVECEXP (int ,int,int) ;
 int XVECLEN (int ,int) ;

int
volatile_insn_p (rtx x)
{
  RTX_CODE code;

  code = GET_CODE (x);
  switch (code)
    {
    case 134:
    case 129:
    case 136:
    case 138:
    case 137:
    case 135:
    case 140:
    case 132:
    case 131:
    case 130:
    case 139:
    case 144:
    case 145:
    case 141:
    case 133:
      return 0;

    case 128:

      return 1;

    case 143:
    case 142:
      if (MEM_VOLATILE_P (x))
 return 1;

    default:
      break;
    }



  {
    const char *fmt = GET_RTX_FORMAT (code);
    int i;

    for (i = GET_RTX_LENGTH (code) - 1; i >= 0; i--)
      {
 if (fmt[i] == 'e')
   {
     if (volatile_insn_p (XEXP (x, i)))
       return 1;
   }
 else if (fmt[i] == 'E')
   {
     int j;
     for (j = 0; j < XVECLEN (x, i); j++)
       if (volatile_insn_p (XVECEXP (x, i, j)))
  return 1;
   }
      }
  }
  return 0;
}
