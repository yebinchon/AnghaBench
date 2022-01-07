
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;




 int BLOCK_FOR_INSN (scalar_t__) ;





 int GET_CODE (scalar_t__) ;
 char* GET_RTX_FORMAT (int) ;
 int GET_RTX_LENGTH (int) ;
 int INSN_CUID (scalar_t__) ;




 int REGNO (scalar_t__) ;
 int REGNO_REG_SET_P (int ,int ) ;

 scalar_t__ XEXP (scalar_t__,int) ;
 scalar_t__ XVECEXP (scalar_t__,int,int) ;
 int XVECLEN (scalar_t__,int) ;
 int load_killed_in_block_p (int ,int ,scalar_t__,int ) ;
 int reg_set_bitmap ;

__attribute__((used)) static int
oprs_not_set_p (rtx x, rtx insn)
{
  int i, j;
  enum rtx_code code;
  const char *fmt;

  if (x == 0)
    return 1;

  code = GET_CODE (x);
  switch (code)
    {
    case 130:
    case 137:
    case 136:
    case 134:
    case 135:
    case 133:
    case 128:
    case 132:
    case 138:
    case 139:
      return 1;

    case 131:
      if (load_killed_in_block_p (BLOCK_FOR_INSN (insn),
      INSN_CUID (insn), x, 0))
 return 0;
      else
 return oprs_not_set_p (XEXP (x, 0), insn);

    case 129:
      return ! REGNO_REG_SET_P (reg_set_bitmap, REGNO (x));

    default:
      break;
    }

  for (i = GET_RTX_LENGTH (code) - 1, fmt = GET_RTX_FORMAT (code); i >= 0; i--)
    {
      if (fmt[i] == 'e')
 {



   if (i == 0)
     return oprs_not_set_p (XEXP (x, i), insn);

   if (! oprs_not_set_p (XEXP (x, i), insn))
     return 0;
 }
      else if (fmt[i] == 'E')
 for (j = 0; j < XVECLEN (x, i); j++)
   if (! oprs_not_set_p (XVECEXP (x, i, j), insn))
     return 0;
    }

  return 1;
}
