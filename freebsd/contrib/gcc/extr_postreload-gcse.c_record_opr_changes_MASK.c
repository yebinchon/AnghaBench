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
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ CLOBBER ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 unsigned int FUNC3 (scalar_t__) ; 
 unsigned int FIRST_PSEUDO_REGISTER ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 unsigned int FUNC7 (scalar_t__) ; 
 scalar_t__ REG_INC ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC12 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  record_last_set_info ; 
 int /*<<< orphan*/  regs_invalidated_by_call ; 

__attribute__((used)) static void
FUNC17 (rtx insn)
{
  rtx note;

  /* Find all stores and record them.  */
  FUNC14 (FUNC6 (insn), record_last_set_info, insn);

  /* Also record autoincremented REGs for this insn as changed.  */
  for (note = FUNC8 (insn); note; note = FUNC12 (note, 1))
    if (FUNC9 (note) == REG_INC)
      FUNC16 (insn, FUNC7 (FUNC12 (note, 0)));

  /* Finally, if this is a call, record all call clobbers.  */
  if (FUNC1 (insn))
    {
      unsigned int regno, end_regno;
      rtx link, x;

      for (regno = 0; regno < FIRST_PSEUDO_REGISTER; regno++)
	if (FUNC11 (regs_invalidated_by_call, regno))
	  FUNC16 (insn, regno);

      for (link = FUNC0 (insn); link; link = FUNC12 (link, 1))
	if (FUNC4 (FUNC12 (link, 0)) == CLOBBER)
	  {
	    x = FUNC12 (FUNC12 (link, 0), 0);
	    if (FUNC10 (x))
	      {
		FUNC13 (FUNC5 (x));
	        regno = FUNC7 (x);
		end_regno = FUNC3 (x);
		do
		  FUNC16 (insn, regno);
		while (++regno < end_regno);
	      }
	  }

      if (! FUNC2 (insn))
	FUNC15 (insn);
    }
}