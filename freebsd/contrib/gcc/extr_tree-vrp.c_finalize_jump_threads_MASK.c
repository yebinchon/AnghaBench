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

/* Variables and functions */
 int /*<<< orphan*/  CDI_DOMINATORS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  heap ; 
 int /*<<< orphan*/  stack ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  tree ; 

__attribute__((used)) static void
FUNC5 (void)
{
  bool cfg_altered = false;
  cfg_altered = FUNC4 ();

  /* If we threaded jumps, then we need to recompute the dominance
     information, to safely do that we must clean up the CFG first.  */
  if (cfg_altered)
    {
      FUNC3 (CDI_DOMINATORS);
      FUNC2 ();
      FUNC1 (CDI_DOMINATORS);
    }
  FUNC0 (tree, heap, stack);
}