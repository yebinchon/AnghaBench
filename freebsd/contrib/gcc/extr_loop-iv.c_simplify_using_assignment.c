
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef int regset ;


 scalar_t__ CALL_P (scalar_t__) ;
 int FIRST_PSEUDO_REGISTER ;
 scalar_t__ NULL_RTX ;
 int PATTERN (scalar_t__) ;
 int REG_P (scalar_t__) ;
 scalar_t__ SET_DEST (scalar_t__) ;
 int SET_REGNO_REG_SET (int ,int) ;
 scalar_t__ SET_SRC (scalar_t__) ;
 scalar_t__ TEST_HARD_REG_BIT (int ,int) ;
 scalar_t__ XEXP (scalar_t__,int ) ;
 scalar_t__ altered_reg_used (scalar_t__*,int ) ;
 scalar_t__ find_reg_equal_equiv_note (scalar_t__) ;
 scalar_t__ for_each_rtx (scalar_t__*,scalar_t__ (*) (scalar_t__*,int ),int ) ;
 int mark_altered ;
 int note_stores (int ,int ,int ) ;
 int regs_invalidated_by_call ;
 int simple_rhs_p (scalar_t__) ;
 scalar_t__ simplify_replace_rtx (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ single_set (scalar_t__) ;

__attribute__((used)) static void
simplify_using_assignment (rtx insn, rtx *expr, regset altered)
{
  rtx set = single_set (insn);
  rtx lhs = NULL_RTX, rhs;
  bool ret = 0;

  if (set)
    {
      lhs = SET_DEST (set);
      if (!REG_P (lhs)
   || altered_reg_used (&lhs, altered))
 ret = 1;
    }
  else
    ret = 1;

  note_stores (PATTERN (insn), mark_altered, altered);
  if (CALL_P (insn))
    {
      int i;


      for (i = 0; i < FIRST_PSEUDO_REGISTER; i++)
 if (TEST_HARD_REG_BIT (regs_invalidated_by_call, i))
   SET_REGNO_REG_SET (altered, i);
    }

  if (ret)
    return;

  rhs = find_reg_equal_equiv_note (insn);
  if (rhs)
    rhs = XEXP (rhs, 0);
  else
    rhs = SET_SRC (set);

  if (!simple_rhs_p (rhs))
    return;

  if (for_each_rtx (&rhs, altered_reg_used, altered))
    return;

  *expr = simplify_replace_rtx (*expr, lhs, rhs);
}
