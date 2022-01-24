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
 int /*<<< orphan*/  FLOOR_MOD_EXPR ; 
 scalar_t__ INTEGER_CST ; 
 int /*<<< orphan*/  MULT_EXPR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

tree
FUNC9 (tree a, tree b)
{
  tree a_mod_b;
  tree type = FUNC3 (a);

  FUNC6 (FUNC0 (a) == INTEGER_CST);
  FUNC6 (FUNC0 (b) == INTEGER_CST);

  if (FUNC7 (a))
    return b;

  if (FUNC7 (b))
    return a;

  if (FUNC8 (a) == -1)
    a = FUNC5 (MULT_EXPR, type, a,
		     FUNC4 (type, -1));

  if (FUNC8 (b) == -1)
    b = FUNC5 (MULT_EXPR, type, b,
		     FUNC4 (type, -1));

  while (1)
    {
      a_mod_b = FUNC5 (FLOOR_MOD_EXPR, type, a, b);

      if (!FUNC2 (a_mod_b)
	  && !FUNC1 (a_mod_b))
	return b;

      a = b;
      b = a_mod_b;
    }
}