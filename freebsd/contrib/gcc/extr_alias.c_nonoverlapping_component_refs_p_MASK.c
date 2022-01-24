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
 scalar_t__ RECORD_TYPE ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC4 (tree x, tree y)
{
  tree fieldx, fieldy, typex, typey, orig_y;

  do
    {
      /* The comparison has to be done at a common type, since we don't
	 know how the inheritance hierarchy works.  */
      orig_y = y;
      do
	{
	  fieldx = FUNC2 (x, 1);
	  typex = FUNC3 (FUNC0 (fieldx));

	  y = orig_y;
	  do
	    {
	      fieldy = FUNC2 (y, 1);
	      typey = FUNC3 (FUNC0 (fieldy));

	      if (typex == typey)
		goto found;

	      y = FUNC2 (y, 0);
	    }
	  while (y && FUNC1 (y) == COMPONENT_REF);

	  x = FUNC2 (x, 0);
	}
      while (x && FUNC1 (x) == COMPONENT_REF);
      /* Never found a common type.  */
      return false;

    found:
      /* If we're left with accessing different fields of a structure,
	 then no overlap.  */
      if (FUNC1 (typex) == RECORD_TYPE
	  && fieldx != fieldy)
	return true;

      /* The comparison on the current field failed.  If we're accessing
	 a very nested structure, look at the next outer level.  */
      x = FUNC2 (x, 0);
      y = FUNC2 (y, 0);
    }
  while (x && y
	 && FUNC1 (x) == COMPONENT_REF
	 && FUNC1 (y) == COMPONENT_REF);

  return false;
}