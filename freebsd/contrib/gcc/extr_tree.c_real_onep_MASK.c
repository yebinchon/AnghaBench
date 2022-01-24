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

/* Variables and functions */
 scalar_t__ COMPLEX_CST ; 
 scalar_t__ REAL_CST ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dconst1 ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

int
FUNC7 (tree expr)
{
  FUNC1 (expr);

  return ((FUNC2 (expr) == REAL_CST
	   && FUNC0 (FUNC5 (expr), dconst1))
	  || (FUNC2 (expr) == COMPLEX_CST
	      && FUNC7 (FUNC4 (expr))
	      && FUNC6 (FUNC3 (expr))));
}