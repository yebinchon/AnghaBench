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
typedef  int /*<<< orphan*/  bitmap ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CDI_DOMINATORS ; 
 int /*<<< orphan*/  TODO_update_ssa ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  current_loops ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void
FUNC8 (void)
{
  bool changed = FUNC3 ();

  if (changed)
    {
      bitmap changed_bbs = FUNC0 (NULL);
      FUNC4 (current_loops, changed_bbs);
      FUNC2 (CDI_DOMINATORS);

      /* This usually does nothing.  But sometimes parts of cfg that originally
	 were inside a loop get out of it due to edge removal (since they
	 become unreachable by back edges from latch).  */
      FUNC5 (changed_bbs, TODO_update_ssa);

      FUNC1 (changed_bbs);

#ifdef ENABLE_CHECKING
      verify_loop_structure (current_loops);
#endif
      FUNC6 ();
    }
}