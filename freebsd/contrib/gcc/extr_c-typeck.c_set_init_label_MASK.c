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
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ RECORD_TYPE ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ UNION_TYPE ; 
 scalar_t__ constructor_fields ; 
 scalar_t__ constructor_range_stack ; 
 int /*<<< orphan*/  constructor_type ; 
 int /*<<< orphan*/  designator_depth ; 
 int designator_erroneous ; 
 int /*<<< orphan*/  FUNC6 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 

void
FUNC11 (tree fieldname)
{
  tree anon = NULL_TREE;
  tree tail;

  if (FUNC10 (0))
    return;

  designator_erroneous = 1;

  if (FUNC2 (constructor_type) != RECORD_TYPE
      && FUNC2 (constructor_type) != UNION_TYPE)
    {
      FUNC7 ("field name not in record or union initializer");
      return;
    }

  for (tail = FUNC5 (constructor_type); tail;
       tail = FUNC1 (tail))
    {
      if (FUNC0 (tail) == NULL_TREE
	  && (FUNC2 (FUNC3 (tail)) == RECORD_TYPE
	      || FUNC2 (FUNC3 (tail)) == UNION_TYPE))
	{
	  anon = FUNC8 (tail, fieldname);
	  if (anon)
	    break;
	}

      if (FUNC0 (tail) == fieldname)
	break;
    }

  if (tail == 0)
    FUNC6 ("unknown field %qE specified in initializer", fieldname);

  while (tail)
    {
      constructor_fields = tail;
      designator_depth++;
      designator_erroneous = 0;
      if (constructor_range_stack)
	FUNC9 (NULL_TREE);

      if (anon)
	{
	  if (FUNC10 (0))
	    return;
	  tail = FUNC4(anon);
	  anon = FUNC1(anon);
	}
      else
	tail = NULL_TREE;
    }
}