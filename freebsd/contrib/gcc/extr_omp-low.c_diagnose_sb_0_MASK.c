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
typedef  int /*<<< orphan*/ * tree ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static bool
FUNC4 (tree *stmt_p, tree branch_ctx, tree label_ctx)
{
  bool exit_p = true;

  if ((label_ctx ? FUNC1 (label_ctx) : NULL) == branch_ctx)
    return false;

  /* Try to avoid confusing the user by producing and error message
     with correct "exit" or "enter" verbage.  We prefer "exit"
     unless we can show that LABEL_CTX is nested within BRANCH_CTX.  */
  if (branch_ctx == NULL)
    exit_p = false;
  else
    {
      while (label_ctx)
	{
	  if (FUNC1 (label_ctx) == branch_ctx)
	    {
	      exit_p = false;
	      break;
	    }
	  label_ctx = FUNC0 (label_ctx);
	}
    }

  if (exit_p)
    FUNC3 ("invalid exit from OpenMP structured block");
  else
    FUNC3 ("invalid entry to OpenMP structured block");

  *stmt_p = FUNC2 ();
  return true;
}