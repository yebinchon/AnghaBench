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
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef  int /*<<< orphan*/  REAL_VALUE_TYPE ;

/* Variables and functions */
 scalar_t__ MULT_EXPR ; 
 int /*<<< orphan*/  NULL_TREE ; 
 scalar_t__ RDIV_EXPR ; 
 scalar_t__ REAL_CST ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dconst1 ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static tree
FUNC7 (enum tree_code code, tree type, tree arg0, tree arg1)
{
  bool mul0 = FUNC0 (arg0) == MULT_EXPR;
  bool mul1 = FUNC0 (arg1) == MULT_EXPR;

  /* (A / C) +- (B / C) -> (A +- B) / C.  */
  if (mul0 == mul1
      && FUNC5 (FUNC1 (arg0, 1),
		       FUNC1 (arg1, 1), 0))
    return FUNC4 (mul0 ? MULT_EXPR : RDIV_EXPR, type,
			FUNC4 (code, type,
				     FUNC1 (arg0, 0),
				     FUNC1 (arg1, 0)),
			FUNC1 (arg0, 1));

  /* (A / C1) +- (A / C2) -> A * (1 / C1 +- 1 / C2).  */
  if (FUNC5 (FUNC1 (arg0, 0),
		       FUNC1 (arg1, 0), 0)
      && FUNC0 (FUNC1 (arg0, 1)) == REAL_CST
      && FUNC0 (FUNC1 (arg1, 1)) == REAL_CST)
    {
      REAL_VALUE_TYPE r0, r1;
      r0 = FUNC2 (FUNC1 (arg0, 1));
      r1 = FUNC2 (FUNC1 (arg1, 1));
      if (!mul0)
	FUNC6 (&r0, RDIV_EXPR, &dconst1, &r0);
      if (!mul1)
        FUNC6 (&r1, RDIV_EXPR, &dconst1, &r1);
      FUNC6 (&r0, code, &r0, &r1);
      return FUNC4 (MULT_EXPR, type,
			  FUNC1 (arg0, 0),
			  FUNC3 (type, r0));
    }

  return NULL_TREE;
}