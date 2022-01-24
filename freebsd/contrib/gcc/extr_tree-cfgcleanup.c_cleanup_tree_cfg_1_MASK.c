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
 int FUNC0 () ; 
 int FUNC1 () ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 () ; 
 scalar_t__ optimize ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static bool
FUNC6 (void)
{
  bool retval;

  retval = FUNC0 ();
  retval |= FUNC2 ();

  /* Forwarder blocks can carry line number information which is
     useful when debugging, so we only clean them up when
     optimizing.  */

  if (optimize > 0)
    {
      /* cleanup_forwarder_blocks can redirect edges out of
	 SWITCH_EXPRs, which can get expensive.  So we want to enable
	 recording of edge to CASE_LABEL_EXPR mappings around the call
	 to cleanup_forwarder_blocks.  */
      FUNC5 ();
      retval |= FUNC1 ();
      FUNC3 ();
    }

  /* Merging the blocks may create new opportunities for folding
     conditional branches (due to the elimination of single-valued PHI
     nodes).  */
  retval |= FUNC4 ();

  return retval;
}