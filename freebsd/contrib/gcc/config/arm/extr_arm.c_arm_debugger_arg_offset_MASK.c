#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ rtx ;

/* Variables and functions */
 scalar_t__ CONST_INT ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ HARD_FRAME_POINTER_REGNUM ; 
 scalar_t__ INSN ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ PLUS ; 
 scalar_t__ REG ; 
 unsigned int FUNC4 (scalar_t__) ; 
 scalar_t__ SET ; 
 scalar_t__ SP_REGNUM ; 
 scalar_t__ TARGET_THUMB ; 
 scalar_t__ FUNC5 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  frame_pointer_needed ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 

int
FUNC9 (int value, rtx addr)
{
  rtx insn;

  /* We are only interested if dbxout_parms() failed to compute the offset.  */
  if (value != 0)
    return 0;

  /* We can only cope with the case where the address is held in a register.  */
  if (FUNC0 (addr) != REG)
    return 0;

  /* If we are using the frame pointer to point at the argument, then
     an offset of 0 is correct.  */
  if (FUNC4 (addr) == (unsigned) HARD_FRAME_POINTER_REGNUM)
    return 0;

  /* If we are using the stack pointer to point at the
     argument, then an offset of 0 is correct.  */
  if ((TARGET_THUMB || !frame_pointer_needed)
      && FUNC4 (addr) == SP_REGNUM)
    return 0;

  /* Oh dear.  The argument is pointed to by a register rather
     than being held in a register, or being stored at a known
     offset from the frame pointer.  Since GDB only understands
     those two kinds of argument we must translate the address
     held in the register into an offset from the frame pointer.
     We do this by searching through the insns for the function
     looking to see where this register gets its value.  If the
     register is initialized from the frame pointer plus an offset
     then we are in luck and we can continue, otherwise we give up.

     This code is exercised by producing debugging information
     for a function with arguments like this:

           double func (double a, double b, int c, double d) {return d;}

     Without this code the stab for parameter 'd' will be set to
     an offset of 0 from the frame pointer, rather than 8.  */

  /* The if() statement says:

     If the insn is a normal instruction
     and if the insn is setting the value in a register
     and if the register being set is the register holding the address of the argument
     and if the address is computing by an addition
     that involves adding to a register
     which is the frame pointer
     a constant integer

     then...  */

  for (insn = FUNC7 (); insn; insn = FUNC2 (insn))
    {
      if (   FUNC0 (insn) == INSN
	  && FUNC0 (FUNC3 (insn)) == SET
	  && FUNC4    (FUNC5 (FUNC3 (insn), 0)) == FUNC4 (addr)
	  && FUNC0 (FUNC5 (FUNC3 (insn), 1)) == PLUS
	  && FUNC0 (FUNC5 (FUNC5 (FUNC3 (insn), 1), 0)) == REG
	  && FUNC4    (FUNC5 (FUNC5 (FUNC3 (insn), 1), 0)) == (unsigned) HARD_FRAME_POINTER_REGNUM
	  && FUNC0 (FUNC5 (FUNC5 (FUNC3 (insn), 1), 1)) == CONST_INT
	     )
	{
	  value = FUNC1 (FUNC5 (FUNC5 (FUNC3 (insn), 1), 1));

	  break;
	}
    }

  if (value == 0)
    {
      FUNC6 (addr);
      FUNC8 (0, "unable to compute real location of stacked parameter");
      value = 8; /* XXX magic hack */
    }

  return value;
}