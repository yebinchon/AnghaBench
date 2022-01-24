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
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ REG_DEAD ; 
 scalar_t__ REG_INC ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__,int) ; 
 scalar_t__ equiv_mem ; 
 scalar_t__ equiv_mem_modified ; 
 scalar_t__ FUNC10 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  validate_equiv_mem_from_store ; 

__attribute__((used)) static int
FUNC14 (rtx start, rtx reg, rtx memref)
{
  rtx insn;
  rtx note;

  equiv_mem = memref;
  equiv_mem_modified = 0;

  /* If the memory reference has side effects or is volatile, it isn't a
     valid equivalence.  */
  if (FUNC13 (memref))
    return 0;

  for (insn = start; insn && ! equiv_mem_modified; insn = FUNC4 (insn))
    {
      if (! FUNC2 (insn))
	continue;

      if (FUNC10 (insn, REG_DEAD, reg))
	return 1;

      if (FUNC0 (insn) && ! FUNC3 (memref)
	  && ! FUNC1 (insn))
	return 0;

      FUNC11 (FUNC5 (insn), validate_equiv_mem_from_store, NULL);

      /* If a register mentioned in MEMREF is modified via an
	 auto-increment, we lose the equivalence.  Do the same if one
	 dies; although we could extend the life, it doesn't seem worth
	 the trouble.  */

      for (note = FUNC6 (insn); note; note = FUNC9 (note, 1))
	if ((FUNC7 (note) == REG_INC
	     || FUNC7 (note) == REG_DEAD)
	    && FUNC8 (FUNC9 (note, 0))
	    && FUNC12 (FUNC9 (note, 0), memref))
	  return 0;
    }

  return 0;
}