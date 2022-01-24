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
 int /*<<< orphan*/  LOOPS_NORMAL ; 
 int /*<<< orphan*/  TODO_update_ssa ; 
 int /*<<< orphan*/ * current_loops ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  vrp_visit_phi_node ; 
 int /*<<< orphan*/  vrp_visit_stmt ; 

__attribute__((used)) static unsigned int
FUNC11 (void)
{
  FUNC1 ();

  current_loops = FUNC3 (LOOPS_NORMAL);
  if (current_loops)
    FUNC6 (current_loops);

  FUNC10 ();
  FUNC7 (vrp_visit_stmt, vrp_visit_phi_node);
  FUNC9 ();

  if (current_loops)
    {
      FUNC5 ();
      FUNC2 (current_loops);
      current_loops = NULL;
    }

  /* ASSERT_EXPRs must be removed before finalizing jump threads
     as finalizing jump threads calls the CFG cleanup code which
     does not properly handle ASSERT_EXPRs.  */
  FUNC4 ();

  /* If we exposed any new variables, go ahead and put them into
     SSA form now, before we handle jump threading.  This simplifies
     interactions between rewriting of _DECL nodes into SSA form
     and rewriting SSA_NAME nodes into SSA form after block
     duplication and CFG manipulation.  */
  FUNC8 (TODO_update_ssa);

  FUNC0 ();
  return 0;
}