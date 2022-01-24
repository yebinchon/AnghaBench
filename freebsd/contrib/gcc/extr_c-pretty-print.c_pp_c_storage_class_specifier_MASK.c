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
typedef  int /*<<< orphan*/  tree ;
typedef  int /*<<< orphan*/  c_pretty_printer ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ TYPE_DECL ; 
 scalar_t__ VAR_DECL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 

void
FUNC5 (c_pretty_printer *pp, tree t)
{
  if (FUNC2 (t) == TYPE_DECL)
    FUNC4 (pp, "typedef");
  else if (FUNC0 (t))
    {
      if (FUNC1 (t))
	FUNC4 (pp, "register");
      else if (FUNC3 (t) && FUNC2 (t) == VAR_DECL)
	FUNC4 (pp, "static");
    }
}