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
#define  ABS_EXPR 131 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  MULT_EXPR 130 
#define  NEGATE_EXPR 129 
 int /*<<< orphan*/  NULL_TREE ; 
#define  RDIV_EXPR 128 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

tree
FUNC6 (tree exp)
{
  tree arg0, arg1;

  switch (FUNC1 (exp))
    {
    case ABS_EXPR:
    case NEGATE_EXPR:
      arg0 = FUNC6 (FUNC2 (exp, 0));
      return arg0 ? arg0 : FUNC2 (exp, 0);

    case MULT_EXPR:
    case RDIV_EXPR:
      if (FUNC0 (FUNC4 (FUNC3 (exp))))
	return NULL_TREE;
      arg0 = FUNC6 (FUNC2 (exp, 0));
      arg1 = FUNC6 (FUNC2 (exp, 1));
      if (arg0 != NULL_TREE || arg1 != NULL_TREE)
	return FUNC5 (FUNC1 (exp), FUNC3 (exp),
			    arg0 ? arg0 : FUNC2 (exp, 0),
			    arg1 ? arg1 : FUNC2 (exp, 1));
      break;

    default:
      break;
    }
  return NULL_TREE;
}