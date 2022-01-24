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
typedef  int /*<<< orphan*/  rtx ;
typedef  int HOST_WIDE_INT ;

/* Variables and functions */
 int AND ; 
 int CONST ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int CONST_INT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int HIGH ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int LO_SUM ; 
#define  MULT 128 
 scalar_t__ PLUS ; 
 int VALUE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8 (int xsize, rtx x, int ysize, rtx y, HOST_WIDE_INT c)
{
  if (FUNC1 (x) == VALUE)
    x = FUNC6 (x);
  if (FUNC1 (y) == VALUE)
    y = FUNC6 (y);
  if (FUNC1 (x) == HIGH)
    x = FUNC3 (x, 0);
  else if (FUNC1 (x) == LO_SUM)
    x = FUNC3 (x, 1);
  else
    x = FUNC4 (x, xsize, 0);
  if (FUNC1 (y) == HIGH)
    y = FUNC3 (y, 0);
  else if (FUNC1 (y) == LO_SUM)
    y = FUNC3 (y, 1);
  else
    y = FUNC4 (y, ysize, 0);

  if (FUNC7 (x, y))
    {
      if (xsize <= 0 || ysize <= 0)
	return 1;
      if (c >= 0 && xsize > c)
	return 1;
      if (c < 0 && ysize+c > 0)
	return 1;
      return 0;
    }

  /* This code used to check for conflicts involving stack references and
     globals but the base address alias code now handles these cases.  */

  if (FUNC1 (x) == PLUS)
    {
      /* The fact that X is canonicalized means that this
	 PLUS rtx is canonicalized.  */
      rtx x0 = FUNC3 (x, 0);
      rtx x1 = FUNC3 (x, 1);

      if (FUNC1 (y) == PLUS)
	{
	  /* The fact that Y is canonicalized means that this
	     PLUS rtx is canonicalized.  */
	  rtx y0 = FUNC3 (y, 0);
	  rtx y1 = FUNC3 (y, 1);

	  if (FUNC7 (x1, y1))
	    return FUNC8 (xsize, x0, ysize, y0, c);
	  if (FUNC7 (x0, y0))
	    return FUNC8 (xsize, x1, ysize, y1, c);
	  if (FUNC1 (x1) == CONST_INT)
	    {
	      if (FUNC1 (y1) == CONST_INT)
		return FUNC8 (xsize, x0, ysize, y0,
					   c - FUNC2 (x1) + FUNC2 (y1));
	      else
		return FUNC8 (xsize, x0, ysize, y,
					   c - FUNC2 (x1));
	    }
	  else if (FUNC1 (y1) == CONST_INT)
	    return FUNC8 (xsize, x, ysize, y0, c + FUNC2 (y1));

	  return 1;
	}
      else if (FUNC1 (x1) == CONST_INT)
	return FUNC8 (xsize, x0, ysize, y, c - FUNC2 (x1));
    }
  else if (FUNC1 (y) == PLUS)
    {
      /* The fact that Y is canonicalized means that this
	 PLUS rtx is canonicalized.  */
      rtx y0 = FUNC3 (y, 0);
      rtx y1 = FUNC3 (y, 1);

      if (FUNC1 (y1) == CONST_INT)
	return FUNC8 (xsize, x, ysize, y0, c + FUNC2 (y1));
      else
	return 1;
    }

  if (FUNC1 (x) == FUNC1 (y))
    switch (FUNC1 (x))
      {
      case MULT:
	{
	  /* Handle cases where we expect the second operands to be the
	     same, and check only whether the first operand would conflict
	     or not.  */
	  rtx x0, y0;
	  rtx x1 = FUNC5 (FUNC3 (x, 1));
	  rtx y1 = FUNC5 (FUNC3 (y, 1));
	  if (! FUNC7 (x1, y1))
	    return 1;
	  x0 = FUNC5 (FUNC3 (x, 0));
	  y0 = FUNC5 (FUNC3 (y, 0));
	  if (FUNC7 (x0, y0))
	    return (xsize == 0 || ysize == 0
		    || (c >= 0 && xsize > c) || (c < 0 && ysize+c > 0));

	  /* Can't properly adjust our sizes.  */
	  if (FUNC1 (x1) != CONST_INT)
	    return 1;
	  xsize /= FUNC2 (x1);
	  ysize /= FUNC2 (x1);
	  c /= FUNC2 (x1);
	  return FUNC8 (xsize, x0, ysize, y0, c);
	}

      default:
	break;
      }

  /* Treat an access through an AND (e.g. a subword access on an Alpha)
     as an access with indeterminate size.  Assume that references
     besides AND are aligned, so if the size of the other reference is
     at least as large as the alignment, assume no other overlap.  */
  if (FUNC1 (x) == AND && FUNC1 (FUNC3 (x, 1)) == CONST_INT)
    {
      if (FUNC1 (y) == AND || ysize < -FUNC2 (FUNC3 (x, 1)))
	xsize = -1;
      return FUNC8 (xsize, FUNC5 (FUNC3 (x, 0)), ysize, y, c);
    }
  if (FUNC1 (y) == AND && FUNC1 (FUNC3 (y, 1)) == CONST_INT)
    {
      /* ??? If we are indexing far enough into the array/structure, we
	 may yet be able to determine that we can not overlap.  But we
	 also need to that we are far enough from the end not to overlap
	 a following reference, so we do nothing with that for now.  */
      if (FUNC1 (x) == AND || xsize < -FUNC2 (FUNC3 (y, 1)))
	ysize = -1;
      return FUNC8 (xsize, x, ysize, FUNC5 (FUNC3 (y, 0)), c);
    }

  if (FUNC0 (x))
    {
      if (FUNC1 (x) == CONST_INT && FUNC1 (y) == CONST_INT)
	{
	  c += (FUNC2 (y) - FUNC2 (x));
	  return (xsize <= 0 || ysize <= 0
		  || (c >= 0 && xsize > c) || (c < 0 && ysize+c > 0));
	}

      if (FUNC1 (x) == CONST)
	{
	  if (FUNC1 (y) == CONST)
	    return FUNC8 (xsize, FUNC5 (FUNC3 (x, 0)),
				       ysize, FUNC5 (FUNC3 (y, 0)), c);
	  else
	    return FUNC8 (xsize, FUNC5 (FUNC3 (x, 0)),
				       ysize, y, c);
	}
      if (FUNC1 (y) == CONST)
	return FUNC8 (xsize, x, ysize,
				   FUNC5 (FUNC3 (y, 0)), c);

      if (FUNC0 (y))
	return (xsize <= 0 || ysize <= 0
		|| (FUNC7 (x, y)
		    && ((c >= 0 && xsize > c) || (c < 0 && ysize+c > 0))));

      return 1;
    }
  return 1;
}