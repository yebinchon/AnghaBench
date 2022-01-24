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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Pmode ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  TARGET_CONST_GP ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 scalar_t__ pic_offset_table_rtx ; 
 int /*<<< orphan*/  regs_invalidated_by_call ; 

void
FUNC14 (rtx retval, rtx addr, rtx retaddr, rtx scratch_r,
		 rtx scratch_b, int noreturn_p, int sibcall_p)
{
  rtx insn;
  bool is_desc = false;

  /* If we find we're calling through a register, then we're actually
     calling through a descriptor, so load up the values.  */
  if (FUNC3 (addr) && FUNC1 (FUNC2 (addr)))
    {
      rtx tmp;
      bool addr_dead_p;

      /* ??? We are currently constrained to *not* use peep2, because
	 we can legitimately change the global lifetime of the GP
	 (in the form of killing where previously live).  This is
	 because a call through a descriptor doesn't use the previous
	 value of the GP, while a direct call does, and we do not
	 commit to either form until the split here.

	 That said, this means that we lack precise life info for
	 whether ADDR is dead after this call.  This is not terribly
	 important, since we can fix things up essentially for free
	 with the POST_DEC below, but it's nice to not use it when we
	 can immediately tell it's not necessary.  */
      addr_dead_p = ((noreturn_p || sibcall_p
		      || FUNC4 (regs_invalidated_by_call,
					    FUNC2 (addr)))
		     && !FUNC0 (FUNC2 (addr)));

      /* Load the code address into scratch_b.  */
      tmp = FUNC11 (Pmode, addr);
      tmp = FUNC9 (Pmode, tmp);
      FUNC6 (scratch_r, tmp);
      FUNC6 (scratch_b, scratch_r);

      /* Load the GP address.  If ADDR is not dead here, then we must
	 revert the change made above via the POST_INCREMENT.  */
      if (!addr_dead_p)
	tmp = FUNC10 (Pmode, addr);
      else
	tmp = addr;
      tmp = FUNC9 (Pmode, tmp);
      FUNC6 (pic_offset_table_rtx, tmp);

      is_desc = true;
      addr = scratch_b;
    }

  if (sibcall_p)
    insn = FUNC12 (addr);
  else if (retval)
    insn = FUNC8 (retval, addr, retaddr);
  else
    insn = FUNC7 (addr, retaddr);
  FUNC5 (insn);

  if ((!TARGET_CONST_GP || is_desc) && !noreturn_p && !sibcall_p)
    FUNC13 ();
}