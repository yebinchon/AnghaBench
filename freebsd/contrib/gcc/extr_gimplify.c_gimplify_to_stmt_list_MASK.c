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
typedef  scalar_t__ tree ;

/* Variables and functions */
 scalar_t__ STATEMENT_LIST ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*) ; 

void
FUNC4 (tree *stmt_p)
{
  FUNC3 (stmt_p);
  if (!*stmt_p)
    *stmt_p = FUNC1 ();
  else if (FUNC0 (*stmt_p) != STATEMENT_LIST)
    {
      tree t = *stmt_p;
      *stmt_p = FUNC1 ();
      FUNC2 (t, stmt_p);
    }
}