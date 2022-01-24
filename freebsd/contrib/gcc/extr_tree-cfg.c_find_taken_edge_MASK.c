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
typedef  int /*<<< orphan*/ * edge ;
typedef  int /*<<< orphan*/  basic_block ;

/* Variables and functions */
 scalar_t__ ADDR_EXPR ; 
 scalar_t__ COND_EXPR ; 
 scalar_t__ LABEL_DECL ; 
 scalar_t__ LABEL_EXPR ; 
 scalar_t__ SWITCH_EXPR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

edge
FUNC11 (basic_block bb, tree val)
{
  tree stmt;

  stmt = FUNC10 (bb);

  FUNC6 (stmt);
  FUNC6 (FUNC8 (stmt));
  FUNC6 (val);

  if (! FUNC9 (val))
    return NULL;

  if (FUNC0 (stmt) == COND_EXPR)
    return FUNC4 (bb, val);

  if (FUNC0 (stmt) == SWITCH_EXPR)
    return FUNC5 (bb, val);

  if (FUNC2 (stmt))
    {
      /* Only optimize if the argument is a label, if the argument is
	 not a label then we can not construct a proper CFG.

         It may be the case that we only need to allow the LABEL_REF to
         appear inside an ADDR_EXPR, but we also allow the LABEL_REF to
         appear inside a LABEL_EXPR just to be safe.  */
      if ((FUNC0 (val) == ADDR_EXPR || FUNC0 (val) == LABEL_EXPR)
	  && FUNC0 (FUNC1 (val, 0)) == LABEL_DECL)
	return FUNC3 (bb, FUNC1 (val, 0));
      return NULL;
    }

  FUNC7 ();
}