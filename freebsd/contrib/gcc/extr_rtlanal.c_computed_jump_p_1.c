
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;



 int CONSTANT_POOL_ADDRESS_P (int ) ;



 int const GET_CODE (int ) ;
 char* GET_RTX_FORMAT (int) ;
 int GET_RTX_LENGTH (int) ;






 int XEXP (int ,int) ;
 int XVECEXP (int ,int,int) ;
 int XVECLEN (int ,int) ;

__attribute__((used)) static int
computed_jump_p_1 (rtx x)
{
  enum rtx_code code = GET_CODE (x);
  int i, j;
  const char *fmt;

  switch (code)
    {
    case 132:
    case 130:
      return 0;

    case 137:
    case 135:
    case 136:
    case 134:
    case 128:
    case 129:
      return 1;

    case 131:
      return ! (GET_CODE (XEXP (x, 0)) == 128
  && CONSTANT_POOL_ADDRESS_P (XEXP (x, 0)));

    case 133:
      return (computed_jump_p_1 (XEXP (x, 1))
       || computed_jump_p_1 (XEXP (x, 2)));

    default:
      break;
    }

  fmt = GET_RTX_FORMAT (code);
  for (i = GET_RTX_LENGTH (code) - 1; i >= 0; i--)
    {
      if (fmt[i] == 'e'
   && computed_jump_p_1 (XEXP (x, i)))
 return 1;

      else if (fmt[i] == 'E')
 for (j = 0; j < XVECLEN (x, i); j++)
   if (computed_jump_p_1 (XVECEXP (x, i, j)))
     return 1;
    }

  return 0;
}
