
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
 int FIRST_PSEUDO_REGISTER ;
 int GET_CODE (scalar_t__) ;
 char* GET_RTX_FORMAT (int) ;
 int GET_RTX_LENGTH (int) ;
 int INSN_CUID (scalar_t__) ;
 int REGNO (scalar_t__) ;

 scalar_t__ XEXP (scalar_t__,int) ;
 scalar_t__ XVECEXP (scalar_t__,int,int) ;
 int XVECLEN (scalar_t__,int) ;
 int gcc_assert (int) ;
 int load_killed_in_block_p (int ,scalar_t__,int) ;
 int reg_changed_after_insn_p (scalar_t__,int ) ;

__attribute__((used)) static bool
oprs_unchanged_p (rtx x, rtx insn, bool after_insn)
{
  int i, j;
  enum rtx_code code;
  const char *fmt;

  if (x == 0)
    return 1;

  code = GET_CODE (x);
  switch (code)
    {
    case 129:

      gcc_assert (REGNO (x) < FIRST_PSEUDO_REGISTER);
      if (after_insn)
 return !reg_changed_after_insn_p (x, INSN_CUID (insn) - 1);
      else
 return !reg_changed_after_insn_p (x, 0);

    case 137:
      if (load_killed_in_block_p (INSN_CUID (insn), x, after_insn))
 return 0;
      else
 return oprs_unchanged_p (XEXP (x, 0), insn, after_insn);

    case 136:
    case 143:
    case 142:
    case 140:
    case 141:
    case 139:
    case 128:
    case 138:
    case 144:
    case 145:
      return 1;

    case 132:
    case 131:
    case 135:
    case 134:
    case 130:
    case 133:
      if (after_insn)
 return 0;
      break;

    default:
      break;
    }

  for (i = GET_RTX_LENGTH (code) - 1, fmt = GET_RTX_FORMAT (code); i >= 0; i--)
    {
      if (fmt[i] == 'e')
 {
   if (! oprs_unchanged_p (XEXP (x, i), insn, after_insn))
     return 0;
 }
      else if (fmt[i] == 'E')
 for (j = 0; j < XVECLEN (x, i); j++)
   if (! oprs_unchanged_p (XVECEXP (x, i, j), insn, after_insn))
     return 0;
    }

  return 1;
}
