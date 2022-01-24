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
#define  COMPOUND_EXPR 133 
#define  COND_EXPR 132 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  integer_zero_node ; 
#define  tcc_binary 131 
#define  tcc_comparison 130 
#define  tcc_expression 129 
#define  tcc_unary 128 

tree
FUNC4 (tree t)
{
  if (!FUNC3 (t))
    return integer_zero_node;

  for (;;)
    switch (FUNC1 (FUNC0 (t)))
      {
      case tcc_unary:
	t = FUNC2 (t, 0);
	break;

      case tcc_binary:
      case tcc_comparison:
	if (!FUNC3 (FUNC2 (t, 1)))
	  t = FUNC2 (t, 0);
	else if (!FUNC3 (FUNC2 (t, 0)))
	  t = FUNC2 (t, 1);
	else
	  return t;
	break;

      case tcc_expression:
	switch (FUNC0 (t))
	  {
	  case COMPOUND_EXPR:
	    if (FUNC3 (FUNC2 (t, 1)))
	      return t;
	    t = FUNC2 (t, 0);
	    break;

	  case COND_EXPR:
	    if (FUNC3 (FUNC2 (t, 1))
		|| FUNC3 (FUNC2 (t, 2)))
	      return t;
	    t = FUNC2 (t, 0);
	    break;

	  default:
	    return t;
	  }
	break;

      default:
	return t;
      }
}