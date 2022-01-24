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
typedef  int /*<<< orphan*/  ssa_prop_visit_stmt_fn ;
typedef  int /*<<< orphan*/  ssa_prop_visit_phi_fn ;
typedef  int /*<<< orphan*/  basic_block ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  interesting_ssa_edges ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  ssa_prop_visit_phi ; 
 int /*<<< orphan*/  ssa_prop_visit_stmt ; 
 int /*<<< orphan*/  tree ; 
 int /*<<< orphan*/  varying_ssa_edges ; 

void
FUNC7 (ssa_prop_visit_stmt_fn visit_stmt,
	       ssa_prop_visit_phi_fn visit_phi)
{
  ssa_prop_visit_stmt = visit_stmt;
  ssa_prop_visit_phi = visit_phi;

  FUNC6 ();

  /* Iterate until the worklists are empty.  */
  while (!FUNC1 () 
	 || FUNC0 (tree, interesting_ssa_edges) > 0
	 || FUNC0 (tree, varying_ssa_edges) > 0)
    {
      if (!FUNC1 ())
	{
	  /* Pull the next block to simulate off the worklist.  */
	  basic_block dest_block = FUNC2 ();
	  FUNC4 (dest_block);
	}

      /* In order to move things to varying as quickly as
	 possible,process the VARYING_SSA_EDGES worklist first.  */
      FUNC3 (&varying_ssa_edges);

      /* Now process the INTERESTING_SSA_EDGES worklist.  */
      FUNC3 (&interesting_ssa_edges);
    }

  FUNC5 ();
}