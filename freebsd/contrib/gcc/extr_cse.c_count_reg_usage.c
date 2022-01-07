
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;



 scalar_t__ ASM_OPERANDS_INPUT (scalar_t__,int) ;
 int ASM_OPERANDS_INPUT_LENGTH (scalar_t__) ;

 scalar_t__ CALL_INSN_FUNCTION_USAGE (scalar_t__) ;







 int const GET_CODE (scalar_t__) ;
 char* GET_RTX_FORMAT (int) ;
 int GET_RTX_LENGTH (int) ;




 int MEM_P (scalar_t__) ;
 int MEM_VOLATILE_P (scalar_t__) ;
 scalar_t__ NULL_RTX ;
 scalar_t__ PATTERN (scalar_t__) ;


 size_t REGNO (scalar_t__) ;
 int REG_EQUAL ;
 int REG_NONNEG ;
 int REG_NOTE_KIND (scalar_t__) ;
 int REG_P (scalar_t__) ;

 scalar_t__ SET_DEST (scalar_t__) ;
 scalar_t__ SET_SRC (scalar_t__) ;

 int const USE ;
 scalar_t__ XEXP (scalar_t__,int) ;
 scalar_t__ XVECEXP (scalar_t__,int,int) ;
 int XVECLEN (scalar_t__,int) ;
 scalar_t__ find_reg_equal_equiv_note (scalar_t__) ;
 int flag_non_call_exceptions ;
 int gcc_unreachable () ;
 int may_trap_p (scalar_t__) ;
 scalar_t__ pc_rtx ;

__attribute__((used)) static void
count_reg_usage (rtx x, int *counts, rtx dest, int incr)
{
  enum rtx_code code;
  rtx note;
  const char *fmt;
  int i, j;

  if (x == 0)
    return;

  switch (code = GET_CODE (x))
    {
    case 130:
      if (x != dest)
 counts[REGNO (x)] += incr;
      return;

    case 131:
    case 142:
    case 140:
    case 138:
    case 139:
    case 137:
    case 128:
    case 132:
      return;

    case 141:


      if (MEM_P (XEXP (x, 0)))
 count_reg_usage (XEXP (XEXP (x, 0), 0), counts, NULL_RTX, incr);
      return;

    case 129:

      if (!REG_P (SET_DEST (x)))
 count_reg_usage (SET_DEST (x), counts, NULL_RTX, incr);
      count_reg_usage (SET_SRC (x), counts,
         dest ? dest : SET_DEST (x),
         incr);
      return;

    case 143:
    case 135:
    case 133:


      if (flag_non_call_exceptions && may_trap_p (PATTERN (x)))
 dest = pc_rtx;
      if (code == 143)
 count_reg_usage (CALL_INSN_FUNCTION_USAGE (x), counts, dest, incr);
      count_reg_usage (PATTERN (x), counts, dest, incr);




      note = find_reg_equal_equiv_note (x);
      if (note)
 {
   rtx eqv = XEXP (note, 0);

   if (GET_CODE (eqv) == 136)


     do
       {
  count_reg_usage (XEXP (eqv, 0), counts, dest, incr);
  eqv = XEXP (eqv, 1);
       }
     while (eqv && GET_CODE (eqv) == 136);
   else
     count_reg_usage (eqv, counts, dest, incr);
 }
      return;

    case 136:
      if (REG_NOTE_KIND (x) == REG_EQUAL
   || (REG_NOTE_KIND (x) != REG_NONNEG && GET_CODE (XEXP (x,0)) == USE)


   || GET_CODE (XEXP (x, 0)) == 141)
 count_reg_usage (XEXP (x, 0), counts, NULL_RTX, incr);

      count_reg_usage (XEXP (x, 1), counts, NULL_RTX, incr);
      return;

    case 144:


      if (MEM_VOLATILE_P (x))
 dest = NULL_RTX;

      for (i = ASM_OPERANDS_INPUT_LENGTH (x) - 1; i >= 0; i--)
 count_reg_usage (ASM_OPERANDS_INPUT (x, i), counts, dest, incr);
      return;

    case 134:
      gcc_unreachable ();

    default:
      break;
    }

  fmt = GET_RTX_FORMAT (code);
  for (i = GET_RTX_LENGTH (code) - 1; i >= 0; i--)
    {
      if (fmt[i] == 'e')
 count_reg_usage (XEXP (x, i), counts, dest, incr);
      else if (fmt[i] == 'E')
 for (j = XVECLEN (x, i) - 1; j >= 0; j--)
   count_reg_usage (XVECEXP (x, i, j), counts, dest, incr);
    }
}
