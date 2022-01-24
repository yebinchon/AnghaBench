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

/* Variables and functions */
#define  ARRAY_REF 136 
#define  COMPLEX_CST 135 
#define  COMPLEX_EXPR 134 
#define  COMPONENT_REF 133 
 int /*<<< orphan*/  IMAGPART_EXPR ; 
#define  INDIRECT_REF 132 
#define  PARM_DECL 131 
 int /*<<< orphan*/  REALPART_EXPR ; 
#define  RESULT_DECL 130 
#define  SSA_NAME 129 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
#define  VAR_DECL 128 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree
FUNC10 (block_stmt_iterator *bsi, tree t, bool imagpart_p,
		   bool gimple_p)
{
  switch (FUNC0 (t))
    {
    case COMPLEX_CST:
      return imagpart_p ? FUNC1 (t) : FUNC3 (t);

    case COMPLEX_EXPR:
      return FUNC2 (t, imagpart_p);

    case VAR_DECL:
    case RESULT_DECL:
    case PARM_DECL:
    case INDIRECT_REF:
    case COMPONENT_REF:
    case ARRAY_REF:
      {
	tree inner_type = FUNC4 (FUNC4 (t));

	t = FUNC5 ((imagpart_p ? IMAGPART_EXPR : REALPART_EXPR),
		    inner_type, FUNC9 (t));

	if (gimple_p)
	  t = FUNC8 (bsi, inner_type, t);

	return t;
      }

    case SSA_NAME:
      return FUNC7 (t, imagpart_p);

    default:
      FUNC6 ();
    }
}