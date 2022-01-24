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
struct affine_tree_combination {int dummy; } ;
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef  int HOST_WIDE_INT ;

/* Variables and functions */
#define  ADDR_EXPR 133 
 int BITS_PER_UNIT ; 
#define  INTEGER_CST 132 
#define  MINUS_EXPR 131 
#define  MULT_EXPR 130 
#define  NEGATE_EXPR 129 
#define  PLUS_EXPR 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int const FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct affine_tree_combination*,struct affine_tree_combination*) ; 
 int /*<<< orphan*/  FUNC4 (struct affine_tree_combination*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct affine_tree_combination*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct affine_tree_combination*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct affine_tree_combination*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int*,int*,int /*<<< orphan*/ *,int*,int*,int*,int) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11 (tree expr, tree type,
			 struct affine_tree_combination *comb)
{
  struct affine_tree_combination tmp;
  enum tree_code code;
  tree cst, core, toffset;
  HOST_WIDE_INT bitpos, bitsize;
  enum machine_mode mode;
  int unsignedp, volatilep;

  FUNC0 (expr);

  code = FUNC1 (expr);
  switch (code)
    {
    case INTEGER_CST:
      FUNC5 (comb, type, FUNC10 (expr));
      return;

    case PLUS_EXPR:
    case MINUS_EXPR:
      FUNC11 (FUNC2 (expr, 0), type, comb);
      FUNC11 (FUNC2 (expr, 1), type, &tmp);
      if (code == MINUS_EXPR)
	FUNC7 (&tmp, -1);
      FUNC3 (comb, &tmp);
      return;

    case MULT_EXPR:
      cst = FUNC2 (expr, 1);
      if (FUNC1 (cst) != INTEGER_CST)
	break;
      FUNC11 (FUNC2 (expr, 0), type, comb);
      FUNC7 (comb, FUNC10 (cst));
      return;

    case NEGATE_EXPR:
      FUNC11 (FUNC2 (expr, 0), type, comb);
      FUNC7 (comb, -1);
      return;

    case ADDR_EXPR:
      core = FUNC9 (FUNC2 (expr, 0), &bitsize, &bitpos,
				  &toffset, &mode, &unsignedp, &volatilep,
				  false);
      if (bitpos % BITS_PER_UNIT != 0)
	break;
      FUNC5 (comb, type, bitpos / BITS_PER_UNIT);
      core = FUNC8 (core);
      if (FUNC1 (core) == ADDR_EXPR)
	FUNC4 (comb, core, 1);
      else
	{
	  FUNC11 (core, type, &tmp);
	  FUNC3 (comb, &tmp);
	}
      if (toffset)
	{
	  FUNC11 (toffset, type, &tmp);
	  FUNC3 (comb, &tmp);
	}
      return;

    default:
      break;
    }

  FUNC6 (comb, type, expr);
}