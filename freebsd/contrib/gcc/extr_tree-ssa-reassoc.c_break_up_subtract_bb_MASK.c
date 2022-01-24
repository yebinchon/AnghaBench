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
typedef  int /*<<< orphan*/  block_stmt_iterator ;
typedef  scalar_t__ basic_block ;
typedef  int /*<<< orphan*/  TREE_VISITED ;

/* Variables and functions */
 int /*<<< orphan*/  CDI_DOMINATORS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ MINUS_EXPR ; 
 scalar_t__ MODIFY_EXPR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  flag_unsafe_math_optimizations ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC13 (basic_block bb)
{
  block_stmt_iterator bsi;
  basic_block son;

  for (bsi = FUNC8 (bb); !FUNC6 (bsi); FUNC7 (&bsi))
    {
      tree stmt = FUNC9 (bsi);

      if (FUNC2 (stmt) == MODIFY_EXPR)
	{
	  tree lhs = FUNC3 (stmt, 0);
	  tree rhs = FUNC3 (stmt, 1);

	  TREE_VISITED (stmt) = 0;
	  /* If unsafe math optimizations we can do reassociation for
	     non-integral types.  */
	  if ((!FUNC0 (FUNC4 (lhs))
	       || !FUNC0 (FUNC4 (rhs)))
	      && (!FUNC1 (FUNC4 (rhs))
		  || !FUNC1 (FUNC4(lhs))
		  || !flag_unsafe_math_optimizations))
	    continue;

	  /* Check for a subtract used only in an addition.  If this
	     is the case, transform it into add of a negate for better
	     reassociation.  IE transform C = A-B into C = A + -B if C
	     is only used in an addition.  */
	  if (FUNC2 (rhs) == MINUS_EXPR)
	    if (FUNC12 (stmt))
	      FUNC5 (stmt, &bsi);
	}
    }
  for (son = FUNC10 (CDI_DOMINATORS, bb);
       son;
       son = FUNC11 (CDI_DOMINATORS, son))
    FUNC13 (son);
}