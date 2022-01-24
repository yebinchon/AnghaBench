#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ type; } ;
typedef  TYPE_1__ value_range_t ;
typedef  int /*<<< orphan*/  tree ;
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;

/* Variables and functions */
 int ASSERT_EXPR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int SSA_NAME ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int TRUTH_ANDIF_EXPR ; 
 int TRUTH_AND_EXPR ; 
 int TRUTH_ORIF_EXPR ; 
 int TRUTH_OR_EXPR ; 
 int TRUTH_XOR_EXPR ; 
 scalar_t__ VR_VARYING ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 scalar_t__ tcc_binary ; 
 scalar_t__ tcc_comparison ; 
 scalar_t__ tcc_unary ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void
FUNC17 (value_range_t *vr, tree expr)
{
  enum tree_code code = FUNC1 (expr);

  if (code == ASSERT_EXPR)
    FUNC4 (vr, expr);
  else if (code == SSA_NAME)
    FUNC7 (vr, expr);
  else if (FUNC2 (code) == tcc_binary
	   || code == TRUTH_ANDIF_EXPR
	   || code == TRUTH_ORIF_EXPR
	   || code == TRUTH_AND_EXPR
	   || code == TRUTH_OR_EXPR
	   || code == TRUTH_XOR_EXPR)
    FUNC5 (vr, expr);
  else if (FUNC2 (code) == tcc_unary)
    FUNC8 (vr, expr);
  else if (FUNC2 (code) == tcc_comparison)
    FUNC6 (vr, expr);
  else if (FUNC9 (expr))
    FUNC13 (vr, expr, NULL);
  else
    FUNC14 (vr);

  /* If we got a varying range from the tests above, try a final
     time to derive a nonnegative or nonzero range.  This time
     relying primarily on generic routines in fold in conjunction
     with range data.  */
  if (vr->type == VR_VARYING)
    {
      bool sop = false;

      if (FUNC0 (FUNC3 (expr))
	  && FUNC15 (expr, &sop))
	FUNC11 (vr, FUNC3 (expr),
					sop || FUNC10 (expr));
      else if (FUNC16 (expr, &sop)
	       && !sop)
        FUNC12 (vr, FUNC3 (expr));
    }
}