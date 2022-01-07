
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 scalar_t__ CONST_INT ;
 scalar_t__ GET_CODE (scalar_t__) ;
 scalar_t__ HARD_FRAME_POINTER_REGNUM ;
 scalar_t__ INSN ;
 int INTVAL (scalar_t__) ;
 scalar_t__ NEXT_INSN (scalar_t__) ;
 scalar_t__ PATTERN (scalar_t__) ;
 scalar_t__ PLUS ;
 scalar_t__ REG ;
 unsigned int REGNO (scalar_t__) ;
 scalar_t__ SET ;
 scalar_t__ SP_REGNUM ;
 scalar_t__ TARGET_THUMB ;
 scalar_t__ XEXP (scalar_t__,int) ;
 int debug_rtx (scalar_t__) ;
 int frame_pointer_needed ;
 scalar_t__ get_insns () ;
 int warning (int ,char*) ;

int
arm_debugger_arg_offset (int value, rtx addr)
{
  rtx insn;


  if (value != 0)
    return 0;


  if (GET_CODE (addr) != REG)
    return 0;



  if (REGNO (addr) == (unsigned) HARD_FRAME_POINTER_REGNUM)
    return 0;



  if ((TARGET_THUMB || !frame_pointer_needed)
      && REGNO (addr) == SP_REGNUM)
    return 0;
  for (insn = get_insns (); insn; insn = NEXT_INSN (insn))
    {
      if ( GET_CODE (insn) == INSN
   && GET_CODE (PATTERN (insn)) == SET
   && REGNO (XEXP (PATTERN (insn), 0)) == REGNO (addr)
   && GET_CODE (XEXP (PATTERN (insn), 1)) == PLUS
   && GET_CODE (XEXP (XEXP (PATTERN (insn), 1), 0)) == REG
   && REGNO (XEXP (XEXP (PATTERN (insn), 1), 0)) == (unsigned) HARD_FRAME_POINTER_REGNUM
   && GET_CODE (XEXP (XEXP (PATTERN (insn), 1), 1)) == CONST_INT
      )
 {
   value = INTVAL (XEXP (XEXP (PATTERN (insn), 1), 1));

   break;
 }
    }

  if (value == 0)
    {
      debug_rtx (addr);
      warning (0, "unable to compute real location of stacked parameter");
      value = 8;
    }

  return value;
}
