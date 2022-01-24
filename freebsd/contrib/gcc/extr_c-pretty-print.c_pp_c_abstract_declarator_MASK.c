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
 scalar_t__ ARRAY_TYPE ; 
 scalar_t__ BLOCK_POINTER_TYPE ; 
 scalar_t__ FUNCTION_TYPE ; 
 scalar_t__ POINTER_TYPE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4 (c_pretty_printer *pp, tree t)
{
  /* APPLE LOCAL begin blocks */
  if (FUNC0 (t) == POINTER_TYPE ||
      FUNC0 (t) == BLOCK_POINTER_TYPE)
   /* APPLE LOCAL end blocks */
    {
      if (FUNC0 (FUNC1 (t)) == ARRAY_TYPE
	  || FUNC0 (FUNC1 (t)) == FUNCTION_TYPE)
	FUNC2 (pp);
      t = FUNC1 (t);
    }

  FUNC3 (pp, t);
}