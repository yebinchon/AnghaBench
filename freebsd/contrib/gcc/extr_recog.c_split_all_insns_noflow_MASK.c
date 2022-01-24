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
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ reload_completed ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

unsigned int
FUNC7 (void)
{
  rtx next, insn;

  for (insn = FUNC3 (); insn; insn = next)
    {
      next = FUNC1 (insn);
      if (FUNC0 (insn))
	{
	  /* Don't split no-op move insns.  These should silently
	     disappear later in final.  Splitting such insns would
	     break the code that handles REG_NO_CONFLICT blocks.  */
	  rtx set = FUNC5 (insn);
	  if (set && FUNC4 (set))
	    {
	      /* Nops get in the way while scheduling, so delete them
		 now if register allocation has already been done.  It
		 is too risky to try to do this before register
		 allocation, and there are unlikely to be very many
		 nops then anyways.

		 ??? Should we use delete_insn when the CFG isn't valid?  */
	      if (reload_completed)
		FUNC2 (insn);
	    }
	  else
	    FUNC6 (insn);
	}
    }
  return 0;
}