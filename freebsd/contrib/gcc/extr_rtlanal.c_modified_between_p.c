
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
 int NEXT_INSN (int ) ;



 int XEXP (int ,int) ;
 int XVECEXP (int ,int,int) ;
 int XVECLEN (int ,int) ;
 int memory_modified_in_insn_p (int ,int ) ;
 int reg_set_between_p (int ,int ,int ) ;

int
modified_between_p (rtx x, rtx start, rtx end)
{
  enum rtx_code code = GET_CODE (x);
  const char *fmt;
  int i, j;
  rtx insn;

  if (start == end)
    return 0;

  switch (code)
    {
    case 134:
    case 135:
    case 133:
    case 136:
    case 128:
    case 132:
      return 0;

    case 130:
    case 137:
      return 1;

    case 131:
      if (modified_between_p (XEXP (x, 0), start, end))
 return 1;
      if (MEM_READONLY_P (x))
 return 0;
      for (insn = NEXT_INSN (start); insn != end; insn = NEXT_INSN (insn))
 if (memory_modified_in_insn_p (x, insn))
   return 1;
      return 0;
      break;

    case 129:
      return reg_set_between_p (x, start, end);

    default:
      break;
    }

  fmt = GET_RTX_FORMAT (code);
  for (i = GET_RTX_LENGTH (code) - 1; i >= 0; i--)
    {
      if (fmt[i] == 'e' && modified_between_p (XEXP (x, i), start, end))
 return 1;

      else if (fmt[i] == 'E')
 for (j = XVECLEN (x, i) - 1; j >= 0; j--)
   if (modified_between_p (XVECEXP (x, i, j), start, end))
     return 1;
    }

  return 0;
}
