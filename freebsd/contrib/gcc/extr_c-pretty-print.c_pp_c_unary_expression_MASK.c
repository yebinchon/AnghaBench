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
typedef  int /*<<< orphan*/  c_pretty_printer ;

/* Variables and functions */
#define  ADDR_EXPR 137 
#define  BIT_NOT_EXPR 136 
#define  CONJ_EXPR 135 
#define  IMAGPART_EXPR 134 
#define  INDIRECT_REF 133 
#define  NEGATE_EXPR 132 
#define  PREDECREMENT_EXPR 131 
#define  PREINCREMENT_EXPR 130 
#define  REALPART_EXPR 129 
 int STRING_CST ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  TRUTH_NOT_EXPR 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC13 (c_pretty_printer *pp, tree e)
{
  enum tree_code code = FUNC0 (e);
  switch (code)
    {
    case PREINCREMENT_EXPR:
    case PREDECREMENT_EXPR:
      FUNC9 (pp, code == PREINCREMENT_EXPR ? "++" : "--");
      FUNC13 (pp, FUNC1 (e, 0));
      break;

    case ADDR_EXPR:
    case INDIRECT_REF:
    case NEGATE_EXPR:
    case BIT_NOT_EXPR:
    case TRUTH_NOT_EXPR:
    case CONJ_EXPR:
      /* String literal are used by address.  */
      if (code == ADDR_EXPR && FUNC0 (FUNC1 (e, 0)) != STRING_CST)
	FUNC2 (pp);
      else if (code == INDIRECT_REF)
	FUNC5 (pp);
      else if (code == NEGATE_EXPR)
	FUNC10 (pp);
      else if (code == BIT_NOT_EXPR || code == CONJ_EXPR)
	FUNC7 (pp);
      else if (code == TRUTH_NOT_EXPR)
	FUNC8 (pp);
      FUNC3 (pp, FUNC1 (e, 0));
      break;

    case REALPART_EXPR:
    case IMAGPART_EXPR:
      FUNC4 (pp, code == REALPART_EXPR ? "__real__" : "__imag__");
      FUNC6 (pp);
      FUNC12 (pp, FUNC1 (e, 0));
      break;

    default:
      FUNC11 (pp, e);
      break;
    }
}