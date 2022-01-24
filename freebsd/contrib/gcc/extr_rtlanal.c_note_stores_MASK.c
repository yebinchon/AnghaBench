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
 scalar_t__ CLOBBER ; 
 scalar_t__ COND_EXEC ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FIRST_PSEUDO_REGISTER ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ PARALLEL ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ SET ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ STRICT_LOW_PART ; 
 scalar_t__ SUBREG ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ ZERO_EXTRACT ; 
 void FUNC9 (scalar_t__,scalar_t__,void*) ; 
 void FUNC10 (scalar_t__,scalar_t__,void*) ; 

void
FUNC11 (rtx x, void (*fun) (rtx, rtx, void *), void *data)
{
  int i;

  if (FUNC1 (x) == COND_EXEC)
    x = FUNC0 (x);

  if (FUNC1 (x) == SET || FUNC1 (x) == CLOBBER)
    {
      rtx dest = FUNC4 (x);

      while ((FUNC1 (dest) == SUBREG
	      && (!FUNC3 (FUNC5 (dest))
		  || FUNC2 (FUNC5 (dest)) >= FIRST_PSEUDO_REGISTER))
	     || FUNC1 (dest) == ZERO_EXTRACT
	     || FUNC1 (dest) == STRICT_LOW_PART)
	dest = FUNC6 (dest, 0);

      /* If we have a PARALLEL, SET_DEST is a list of EXPR_LIST expressions,
	 each of whose first operand is a register.  */
      if (FUNC1 (dest) == PARALLEL)
	{
	  for (i = FUNC8 (dest, 0) - 1; i >= 0; i--)
	    if (FUNC6 (FUNC7 (dest, 0, i), 0) != 0)
	      (*fun) (FUNC6 (FUNC7 (dest, 0, i), 0), x, data);
	}
      else
	(*fun) (dest, x, data);
    }

  else if (FUNC1 (x) == PARALLEL)
    for (i = FUNC8 (x, 0) - 1; i >= 0; i--)
      FUNC11 (FUNC7 (x, 0, i), fun, data);
}