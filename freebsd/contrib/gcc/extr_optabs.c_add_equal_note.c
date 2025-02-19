
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;


 scalar_t__ GET_CODE (scalar_t__) ;
 int GET_MODE (scalar_t__) ;
 scalar_t__ GET_RTX_CLASS (int) ;
 scalar_t__ INSN_P (scalar_t__) ;
 scalar_t__ NEXT_INSN (scalar_t__) ;
 scalar_t__ NULL_RTX ;
 scalar_t__ PREV_INSN (scalar_t__) ;
 int REG_EQUAL ;
 scalar_t__ RTX_BIN_ARITH ;
 scalar_t__ RTX_COMM_ARITH ;
 scalar_t__ RTX_COMM_COMPARE ;
 scalar_t__ RTX_COMPARE ;
 scalar_t__ RTX_UNARY ;
 scalar_t__ SET_DEST (scalar_t__) ;
 scalar_t__ STRICT_LOW_PART ;
 scalar_t__ XEXP (scalar_t__,int ) ;
 scalar_t__ ZERO_EXTRACT ;
 int copy_rtx (scalar_t__) ;
 int gcc_assert (int) ;
 scalar_t__ gen_rtx_fmt_e (int,int ,int ) ;
 scalar_t__ gen_rtx_fmt_ee (int,int ,int ,int ) ;
 scalar_t__ reg_overlap_mentioned_p (scalar_t__,scalar_t__) ;
 scalar_t__ reg_set_p (scalar_t__,scalar_t__) ;
 int rtx_equal_p (scalar_t__,scalar_t__) ;
 int set_unique_reg_note (scalar_t__,int ,scalar_t__) ;
 scalar_t__ single_set (scalar_t__) ;

__attribute__((used)) static int
add_equal_note (rtx insns, rtx target, enum rtx_code code, rtx op0, rtx op1)
{
  rtx last_insn, insn, set;
  rtx note;

  gcc_assert (insns && INSN_P (insns) && NEXT_INSN (insns));

  if (GET_RTX_CLASS (code) != RTX_COMM_ARITH
      && GET_RTX_CLASS (code) != RTX_BIN_ARITH
      && GET_RTX_CLASS (code) != RTX_COMM_COMPARE
      && GET_RTX_CLASS (code) != RTX_COMPARE
      && GET_RTX_CLASS (code) != RTX_UNARY)
    return 1;

  if (GET_CODE (target) == ZERO_EXTRACT)
    return 1;

  for (last_insn = insns;
       NEXT_INSN (last_insn) != NULL_RTX;
       last_insn = NEXT_INSN (last_insn))
    ;

  set = single_set (last_insn);
  if (set == NULL_RTX)
    return 1;

  if (! rtx_equal_p (SET_DEST (set), target)

      && (GET_CODE (SET_DEST (set)) != STRICT_LOW_PART
   || ! rtx_equal_p (XEXP (SET_DEST (set), 0), target)))
    return 1;



  if (reg_overlap_mentioned_p (target, op0)
      || (op1 && reg_overlap_mentioned_p (target, op1)))
    {
      insn = PREV_INSN (last_insn);
      while (insn != NULL_RTX)
 {
   if (reg_set_p (target, insn))
     return 0;

   insn = PREV_INSN (insn);
 }
    }

  if (GET_RTX_CLASS (code) == RTX_UNARY)
    note = gen_rtx_fmt_e (code, GET_MODE (target), copy_rtx (op0));
  else
    note = gen_rtx_fmt_ee (code, GET_MODE (target), copy_rtx (op0), copy_rtx (op1));

  set_unique_reg_note (last_insn, REG_EQUAL, note);

  return 1;
}
