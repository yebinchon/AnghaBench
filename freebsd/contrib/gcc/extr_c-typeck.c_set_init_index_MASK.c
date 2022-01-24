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
 scalar_t__ ARRAY_TYPE ; 
 scalar_t__ INTEGER_CST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  bitsizetype ; 
 scalar_t__ constructor_index ; 
 scalar_t__ constructor_max_index ; 
 scalar_t__ constructor_range_stack ; 
 scalar_t__ constructor_type ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  designator_depth ; 
 int designator_erroneous ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__) ; 
 int FUNC9 (scalar_t__) ; 

void
FUNC10 (tree first, tree last)
{
  if (FUNC6 (1))
    return;

  designator_erroneous = 1;

  if (!FUNC0 (FUNC2 (first))
      || (last && !FUNC0 (FUNC2 (last))))
    {
      FUNC4 ("array index in initializer not of integer type");
      return;
    }

  if (FUNC1 (first) != INTEGER_CST)
    FUNC4 ("nonconstant array index in initializer");
  else if (last != 0 && FUNC1 (last) != INTEGER_CST)
    FUNC4 ("nonconstant array index in initializer");
  else if (FUNC1 (constructor_type) != ARRAY_TYPE)
    FUNC4 ("array index in non-array initializer");
  else if (FUNC9 (first) == -1)
    FUNC4 ("array index in initializer exceeds array bounds");
  else if (constructor_max_index
	   && FUNC8 (constructor_max_index, first))
    FUNC4 ("array index in initializer exceeds array bounds");
  else
    {
      constructor_index = FUNC3 (bitsizetype, first);

      if (last)
	{
	  if (FUNC7 (first, last))
	    last = 0;
	  else if (FUNC8 (last, first))
	    {
	      FUNC4 ("empty index range in initializer");
	      last = 0;
	    }
	  else
	    {
	      last = FUNC3 (bitsizetype, last);
	      if (constructor_max_index != 0
		  && FUNC8 (constructor_max_index, last))
		{
		  FUNC4 ("array index range in initializer exceeds array bounds");
		  last = 0;
		}
	    }
	}

      designator_depth++;
      designator_erroneous = 0;
      if (constructor_range_stack || last)
	FUNC5 (last);
    }
}