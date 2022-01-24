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
typedef  int /*<<< orphan*/ * rtx ;
typedef  int /*<<< orphan*/ * basic_block ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ NOTE ; 
 int TDF_BLOCKS ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int,int,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC7 (FILE *f, rtx first, int flags)
{
  basic_block current_bb = NULL;
  rtx insn;

  for (insn = first; NULL != insn; insn = FUNC4 (insn))
    {
      if ((flags & TDF_BLOCKS)
	  && (FUNC3 (insn) || FUNC2 (insn) == NOTE)
	  && FUNC1 (insn)
	  && !current_bb)
	{
	  current_bb = FUNC1 (insn);
	  FUNC5 (current_bb, true, false, flags, ";; ", f);
	}

      FUNC6 (f, insn);

      if ((flags & TDF_BLOCKS)
	  && current_bb
	  && insn == FUNC0 (current_bb))
	{
	  FUNC5 (current_bb, false, true, flags, ";; ", f);
	  current_bb = NULL;
	}
    }
}