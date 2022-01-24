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
typedef  int /*<<< orphan*/  double_int ;

/* Variables and functions */
 int /*<<< orphan*/  FLOOR_DIV_EXPR ; 
#define  INTEGER_CST 131 
#define  MINUS_EXPR 130 
#define  MULT_EXPR 129 
#define  PLUS_EXPR 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int const FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  double_int_one ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC13 (tree top, tree bot, double_int *mul)
{
  tree mby;
  enum tree_code code;
  double_int res, p0, p1;
  unsigned precision = FUNC4 (FUNC3 (top));

  FUNC0 (top);
  FUNC0 (bot);

  if (FUNC11 (top, bot, 0))
    {
      *mul = double_int_one;
      return true;
    }

  code = FUNC1 (top);
  switch (code)
    {
    case MULT_EXPR:
      mby = FUNC2 (top, 1);
      if (FUNC1 (mby) != INTEGER_CST)
	return false;

      if (!FUNC13 (FUNC2 (top, 0), bot, &res))
	return false;

      *mul = FUNC9 (FUNC6 (res, FUNC12 (mby)),
			      precision);
      return true;

    case PLUS_EXPR:
    case MINUS_EXPR:
      if (!FUNC13 (FUNC2 (top, 0), bot, &p0)
	  || !FUNC13 (FUNC2 (top, 1), bot, &p1))
	return false;

      if (code == MINUS_EXPR)
	p1 = FUNC7 (p1);
      *mul = FUNC9 (FUNC5 (p0, p1), precision);
      return true;

    case INTEGER_CST:
      if (FUNC1 (bot) != INTEGER_CST)
	return false;

      p0 = FUNC9 (FUNC12 (bot), precision);
      p1 = FUNC9 (FUNC12 (top), precision);
      if (FUNC10 (p1))
	return false;
      *mul = FUNC9 (FUNC8 (p0, p1, FLOOR_DIV_EXPR, &res),
			      precision);
      return FUNC10 (res);

    default:
      return false;
    }
}