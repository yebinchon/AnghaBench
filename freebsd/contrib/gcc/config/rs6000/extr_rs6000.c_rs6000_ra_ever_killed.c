
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 scalar_t__ CALL_P (scalar_t__) ;
 scalar_t__ INSN_P (scalar_t__) ;
 int LINK_REGISTER_REGNUM ;
 scalar_t__ NEXT_INSN (scalar_t__) ;
 scalar_t__ NULL_RTX ;
 int Pmode ;
 int REG_INC ;
 int SIBLING_CALL_P (scalar_t__) ;
 scalar_t__ current_function_is_thunk ;
 scalar_t__ find_regno_note (scalar_t__,int ,int ) ;
 scalar_t__ gen_rtx_REG (int ,int ) ;
 scalar_t__ get_insns () ;
 int pop_topmost_sequence () ;
 int prologue_epilogue_contains (scalar_t__) ;
 int push_topmost_sequence () ;
 scalar_t__ set_of (scalar_t__,scalar_t__) ;

__attribute__((used)) static int
rs6000_ra_ever_killed (void)
{
  rtx top;
  rtx reg;
  rtx insn;

  if (current_function_is_thunk)
    return 0;
  push_topmost_sequence ();
  top = get_insns ();
  pop_topmost_sequence ();
  reg = gen_rtx_REG (Pmode, LINK_REGISTER_REGNUM);

  for (insn = NEXT_INSN (top); insn != NULL_RTX; insn = NEXT_INSN (insn))
    {
      if (INSN_P (insn))
 {
   if (CALL_P (insn))
     {
       if (!SIBLING_CALL_P (insn))
  return 1;
     }
   else if (find_regno_note (insn, REG_INC, LINK_REGISTER_REGNUM))
     return 1;
   else if (set_of (reg, insn) != NULL_RTX
     && !prologue_epilogue_contains (insn))
     return 1;
     }
    }
  return 0;
}
