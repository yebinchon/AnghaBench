
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 scalar_t__ ADDRESS ;
 scalar_t__ CALL_P (scalar_t__) ;
 int CONST_OR_PURE_CALL_P (scalar_t__) ;
 scalar_t__ GET_CODE (scalar_t__) ;
 scalar_t__ GET_MODE (scalar_t__) ;
 int INSN_P (scalar_t__) ;
 scalar_t__ MEM_P (scalar_t__) ;
 scalar_t__ PATTERN (scalar_t__) ;
 scalar_t__ Pmode ;
 scalar_t__ SET ;
 scalar_t__ SET_DEST (scalar_t__) ;
 scalar_t__ SET_SRC (scalar_t__) ;
 scalar_t__ XEXP (scalar_t__,int) ;
 scalar_t__ ZERO_EXTRACT ;
 scalar_t__ expr_equiv_p (scalar_t__,scalar_t__) ;
 scalar_t__ find_base_term (scalar_t__) ;
 int find_loads (scalar_t__,scalar_t__,int) ;
 scalar_t__ find_reg_equal_equiv_note (scalar_t__) ;
 scalar_t__ output_dependence (scalar_t__,scalar_t__) ;
 scalar_t__ pure_call_p (scalar_t__) ;
 scalar_t__ stack_pointer_rtx ;

__attribute__((used)) static bool
store_killed_in_insn (rtx x, rtx x_regs, rtx insn, int after)
{
  rtx reg, base, note;

  if (!INSN_P (insn))
    return 0;

  if (CALL_P (insn))
    {


      if (! CONST_OR_PURE_CALL_P (insn) || pure_call_p (insn))
 return 1;



      for (reg = x_regs; reg; reg = XEXP (reg, 1))
 {
   base = find_base_term (XEXP (reg, 0));
   if (!base
       || (GET_CODE (base) == ADDRESS
    && GET_MODE (base) == Pmode
    && XEXP (base, 0) == stack_pointer_rtx))
     return 1;
 }

      return 0;
    }

  if (GET_CODE (PATTERN (insn)) == SET)
    {
      rtx pat = PATTERN (insn);
      rtx dest = SET_DEST (pat);

      if (GET_CODE (dest) == ZERO_EXTRACT)
 dest = XEXP (dest, 0);


      if (MEM_P (dest)
   && !expr_equiv_p (dest, x))
 {
   if (after)
     {
       if (output_dependence (dest, x))
  return 1;
     }
   else
     {
       if (output_dependence (x, dest))
  return 1;
     }
 }
      if (find_loads (SET_SRC (pat), x, after))
 return 1;
    }
  else if (find_loads (PATTERN (insn), x, after))
    return 1;



  note = find_reg_equal_equiv_note (insn);
  if (! note)
    return 0;
  note = XEXP (note, 0);



  if (expr_equiv_p (note, x))
    return 0;


  return find_loads (note, x, after);
}
