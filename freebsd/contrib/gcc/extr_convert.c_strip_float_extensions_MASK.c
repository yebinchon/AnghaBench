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
typedef  int /*<<< orphan*/ * tree ;
typedef  int /*<<< orphan*/  REAL_VALUE_TYPE ;

/* Variables and functions */
 scalar_t__ CONVERT_EXPR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ NOP_EXPR ; 
 scalar_t__ REAL_CST ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * double_type_node ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * float_type_node ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

tree
FUNC10 (tree exp)
{
  tree sub, expt, subt;

  /*  For floating point constant look up the narrowest type that can hold
      it properly and handle it like (type)(narrowest_type)constant.
      This way we can optimize for instance a=a*2.0 where "a" is float
      but 2.0 is double constant.  */
  if (FUNC1 (exp) == REAL_CST)
    {
      REAL_VALUE_TYPE orig;
      tree type = NULL;

      orig = FUNC3 (exp);
      if (FUNC6 (FUNC4 (exp)) > FUNC6 (float_type_node)
	  && FUNC8 (FUNC5 (float_type_node), &orig))
	type = float_type_node;
      else if (FUNC6 (FUNC4 (exp))
	       > FUNC6 (double_type_node)
	       && FUNC8 (FUNC5 (double_type_node), &orig))
	type = double_type_node;
      if (type)
	return FUNC7 (type, FUNC9 (FUNC5 (type), orig));
    }

  if (FUNC1 (exp) != NOP_EXPR
      && FUNC1 (exp) != CONVERT_EXPR)
    return exp;

  sub = FUNC2 (exp, 0);
  subt = FUNC4 (sub);
  expt = FUNC4 (exp);

  if (!FUNC0 (subt))
    return exp;

  if (FUNC6 (subt) > FUNC6 (expt))
    return exp;

  return FUNC10 (sub);
}