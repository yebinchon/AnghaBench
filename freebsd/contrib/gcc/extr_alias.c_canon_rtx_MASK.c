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
typedef  scalar_t__ rtx ;

/* Variables and functions */
 scalar_t__ CONST_INT ; 
 scalar_t__ FIRST_PSEUDO_REGISTER ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ PLUS ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (scalar_t__,scalar_t__) ; 

rtx
FUNC11 (rtx x)
{
  /* Recursively look for equivalences.  */
  if (FUNC5 (x) && FUNC4 (x) >= FIRST_PSEUDO_REGISTER)
    {
      rtx t = FUNC8 (FUNC4 (x));
      if (t == x)
	return x;
      if (t)
	return FUNC11 (t);
    }

  if (FUNC0 (x) == PLUS)
    {
      rtx x0 = FUNC11 (FUNC6 (x, 0));
      rtx x1 = FUNC11 (FUNC6 (x, 1));

      if (x0 != FUNC6 (x, 0) || x1 != FUNC6 (x, 1))
	{
	  if (FUNC0 (x0) == CONST_INT)
	    return FUNC9 (x1, FUNC2 (x0));
	  else if (FUNC0 (x1) == CONST_INT)
	    return FUNC9 (x0, FUNC2 (x1));
	  return FUNC7 (FUNC1 (x), x0, x1);
	}
    }

  /* This gives us much better alias analysis when called from
     the loop optimizer.   Note we want to leave the original
     MEM alone, but need to return the canonicalized MEM with
     all the flags with their original values.  */
  else if (FUNC3 (x))
    x = FUNC10 (x, FUNC11 (FUNC6 (x, 0)));

  return x;
}