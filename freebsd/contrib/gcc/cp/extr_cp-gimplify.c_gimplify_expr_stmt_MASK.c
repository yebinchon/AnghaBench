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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * NULL_TREE ; 
 int /*<<< orphan*/  OPT_Wextra ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/ * error_mark_node ; 
 scalar_t__ extra_warnings ; 
 int /*<<< orphan*/  input_location ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ warn_unused_value ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC9 (tree *stmt_p)
{
  tree stmt = FUNC0 (*stmt_p);

  if (stmt == error_mark_node)
    stmt = NULL;

  /* Gimplification of a statement expression will nullify the
     statement if all its side effects are moved to *PRE_P and *POST_P.

     In this case we will not want to emit the gimplified statement.
     However, we may still want to emit a warning, so we do that before
     gimplification.  */
  if (stmt && (extra_warnings || warn_unused_value))
    {
      if (!FUNC3 (stmt))
	{
	  if (!FUNC1 (stmt)
	      && !FUNC5 (FUNC4 (stmt))
	      && !FUNC2 (stmt))
	    FUNC8 (OPT_Wextra, "statement with no effect");
	}
      else if (warn_unused_value)
	FUNC7 (stmt, input_location);
    }

  if (stmt == NULL_TREE)
    stmt = FUNC6 ();

  *stmt_p = stmt;
}