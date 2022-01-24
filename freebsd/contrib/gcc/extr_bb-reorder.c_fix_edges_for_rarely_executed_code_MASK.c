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
typedef  int /*<<< orphan*/  edge ;

/* Variables and functions */
 int /*<<< orphan*/  HAS_LONG_COND_BRANCH ; 
 int /*<<< orphan*/  HAS_LONG_UNCOND_BRANCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8 (edge *crossing_edges,
				    int n_crossing_edges)
{
  /* Make sure the source of any crossing edge ends in a jump and the
     destination of any crossing edge has a label.  */

  FUNC0 (crossing_edges, n_crossing_edges);

  /* Convert all crossing fall_thru edges to non-crossing fall
     thrus to unconditional jumps (that jump to the original fall
     thru dest).  */

  FUNC4 ();

  /* If the architecture does not have conditional branches that can
     span all of memory, convert crossing conditional branches into
     crossing unconditional branches.  */

  if (!HAS_LONG_COND_BRANCH)
    FUNC2 ();

  /* If the architecture does not have unconditional branches that
     can span all of memory, convert crossing unconditional branches
     into indirect jumps.  Since adding an indirect jump also adds
     a new register usage, update the register usage information as
     well.  */

  if (!HAS_LONG_UNCOND_BRANCH)
    {
      FUNC3 ();
      FUNC7 (FUNC5(), FUNC6 ());
    }

  FUNC1 ();
}