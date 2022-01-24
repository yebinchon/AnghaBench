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
typedef  int /*<<< orphan*/  tree_stmt_iterator ;
typedef  int /*<<< orphan*/  tree ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ STATEMENT_LIST ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

void
FUNC9 (tree handlers)
{
  tree_stmt_iterator i;

  /* If we don't have a STATEMENT_LIST, then we've just got one
     handler, and thus nothing to warn about.  */
  if (FUNC1 (handlers) != STATEMENT_LIST)
    return;

  i = FUNC7 (handlers);
  if (!FUNC5 (i))
    while (1)
      {
	tree handler = FUNC8 (i);
	FUNC6 (&i);

	/* No more handlers; nothing to shadow.  */
	if (FUNC5 (i))
	  break;
	if (FUNC2 (handler) == NULL_TREE)
	  FUNC4 ("%H%<...%> handler must be the last handler for"
		   " its try block", FUNC0 (handler));
	else
	  FUNC3 (handler, i);
      }
}