
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reg_avail_info {int first_set; int last_set; int last_bb; } ;
typedef scalar_t__ rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
 int GET_CODE (scalar_t__) ;
 char* GET_RTX_FORMAT (int) ;
 int GET_RTX_LENGTH (int) ;
 int INSN_CUID (scalar_t__) ;
 size_t REGNO (scalar_t__) ;

 scalar_t__ XEXP (scalar_t__,int) ;
 scalar_t__ XVECEXP (scalar_t__,int,int) ;
 int XVECLEN (scalar_t__,int) ;
 int current_bb ;
 int load_killed_in_block_p (int ,int ,scalar_t__,int) ;
 struct reg_avail_info* reg_avail_info ;

__attribute__((used)) static int
oprs_unchanged_p (rtx x, rtx insn, int avail_p)
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
      {
 struct reg_avail_info *info = &reg_avail_info[REGNO (x)];

 if (info->last_bb != current_bb)
   return 1;
 if (avail_p)
   return info->last_set < INSN_CUID (insn);
 else
   return info->first_set >= INSN_CUID (insn);
      }

    case 137:
      if (load_killed_in_block_p (current_bb, INSN_CUID (insn),
      x, avail_p))
 return 0;
      else
 return oprs_unchanged_p (XEXP (x, 0), insn, avail_p);

    case 132:
    case 131:
    case 135:
    case 134:
    case 130:
    case 133:
      return 0;

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

    default:
      break;
    }

  for (i = GET_RTX_LENGTH (code) - 1, fmt = GET_RTX_FORMAT (code); i >= 0; i--)
    {
      if (fmt[i] == 'e')
 {



   if (i == 0)
     return oprs_unchanged_p (XEXP (x, i), insn, avail_p);

   else if (! oprs_unchanged_p (XEXP (x, i), insn, avail_p))
     return 0;
 }
      else if (fmt[i] == 'E')
 for (j = 0; j < XVECLEN (x, i); j++)
   if (! oprs_unchanged_p (XVECEXP (x, i, j), insn, avail_p))
     return 0;
    }

  return 1;
}
