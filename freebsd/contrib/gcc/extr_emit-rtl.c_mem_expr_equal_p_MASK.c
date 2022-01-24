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
typedef  scalar_t__ tree ;

/* Variables and functions */
 scalar_t__ COMPONENT_REF ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int
FUNC5 (tree expr1, tree expr2)
{
  if (expr1 == expr2)
    return 1;

  if (! expr1 || ! expr2)
    return 0;

  if (FUNC2 (expr1) != FUNC2 (expr2))
    return 0;

  if (FUNC2 (expr1) == COMPONENT_REF)
    return 
      FUNC5 (FUNC3 (expr1, 0),
			FUNC3 (expr2, 0))
      && FUNC5 (FUNC3 (expr1, 1), /* field decl */
			   FUNC3 (expr2, 1));
  
  if (FUNC1 (expr1))
    return FUNC5 (FUNC3 (expr1, 0),
			     FUNC3 (expr2, 0));

  /* ARRAY_REFs, ARRAY_RANGE_REFs and BIT_FIELD_REFs should already
	      have been resolved here.  */
  FUNC4 (FUNC0 (expr1));
  
  /* Decls with different pointers can't be equal.  */
  return 0;
}