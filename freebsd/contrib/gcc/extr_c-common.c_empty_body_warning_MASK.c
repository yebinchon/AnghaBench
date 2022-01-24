#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct TYPE_2__ {scalar_t__ stmt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  OPT_Wextra ; 
 scalar_t__ STATEMENT_LIST ; 
 TYPE_1__* FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ extra_warnings ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

void
FUNC5 (tree inner_then, tree inner_else)
{
  if (extra_warnings)
    {
      if (FUNC3 (inner_then) == STATEMENT_LIST
	  && FUNC2 (inner_then))
	inner_then = FUNC2 (inner_then)->stmt;

      if (inner_else && FUNC3 (inner_else) == STATEMENT_LIST
	  && FUNC2 (inner_else))
	inner_else = FUNC2 (inner_else)->stmt;

      if (FUNC1 (inner_then) && !inner_else)
	FUNC4 (OPT_Wextra, "%Hempty body in an if-statement",
		 FUNC0 (inner_then));

      if (inner_else && FUNC1 (inner_else))
	FUNC4 (OPT_Wextra, "%Hempty body in an else-statement",
		 FUNC0 (inner_else));
   }
}