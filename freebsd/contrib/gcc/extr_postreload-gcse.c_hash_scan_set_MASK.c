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
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 scalar_t__ FIRST_STACK_REG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ LAST_STACK_REG ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ flag_float_store ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC17 (rtx insn)
{
  rtx pat = FUNC5 (insn);
  rtx src = FUNC9 (pat);
  rtx dest = FUNC8 (pat);

  /* We are only interested in loads and stores.  */
  if (! FUNC4 (src) && ! FUNC4 (dest))
    return;

  /* Don't mess with jumps and nops.  */
  if (FUNC3 (insn) || FUNC16 (pat))
    return;

  if (FUNC7 (dest))
    {
      if (/* Don't CSE something if we can't do a reg/reg copy.  */
	  FUNC11 (FUNC1 (dest))
	  /* Is SET_SRC something we want to gcse?  */
	  && FUNC12 (src, FUNC1 (src))
#ifdef STACK_REGS
	  /* Never consider insns touching the register stack.  It may
	     create situations that reg-stack cannot handle (e.g. a stack
	     register live across an abnormal edge).  */
	  && (REGNO (dest) < FIRST_STACK_REG || REGNO (dest) > LAST_STACK_REG)
#endif
	  /* An expression is not available if its operands are
	     subsequently modified, including this insn.  */
	  && FUNC15 (src, insn, true))
	{
	  FUNC13 (src, insn);
	}
    }
  else if (FUNC7 (src))
    {
      /* Only record sets of pseudo-regs in the hash table.  */
      if (/* Don't CSE something if we can't do a reg/reg copy.  */
	  FUNC11 (FUNC1 (src))
	  /* Is SET_DEST something we want to gcse?  */
	  && FUNC12 (dest, FUNC1 (dest))
#ifdef STACK_REGS
	  /* As above for STACK_REGS.  */
	  && (REGNO (src) < FIRST_STACK_REG || REGNO (src) > LAST_STACK_REG)
#endif
	  && ! (flag_float_store && FUNC0 (FUNC1 (dest)))
	  /* Check if the memory expression is killed after insn.  */
	  && ! FUNC14 (FUNC2 (insn) + 1, dest, true)
	  && FUNC15 (FUNC10 (dest, 0), insn, true))
	{
	  FUNC13 (dest, insn);
	}
    }
}