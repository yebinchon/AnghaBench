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
typedef  int /*<<< orphan*/  cxx_pretty_printer ;

/* Variables and functions */
 scalar_t__ ARRAY_TYPE ; 
 scalar_t__ FUNCTION_TYPE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7 (cxx_pretty_printer *pp, tree t)
{
  if (FUNC4 (t) || FUNC3 (t))
    FUNC6 (pp);
  else if (FUNC0 (t))
    {
      if (FUNC1 (FUNC2 (t)) == ARRAY_TYPE
	  || FUNC1 (FUNC2 (t)) == FUNCTION_TYPE)
	FUNC6 (pp);
      t = FUNC2 (t);
    }
  FUNC5 (pp, t);
}