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
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FIELD_DECL ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 

tree
FUNC9 (tree t, tree type)
{
  tree field;

  for (field = FUNC7 (t); field; field = FUNC3 (field))
    {
      if (FUNC5 (field))
	continue;
      if (FUNC4 (field) != FIELD_DECL || FUNC1 (field))
	continue;

      /* If we find it directly, return the field.  */
      if (FUNC2 (field) == NULL_TREE
	  && type == FUNC8 (FUNC6 (field)))
	{
	  return field;
	}

      /* Otherwise, it could be nested, search harder.  */
      if (FUNC2 (field) == NULL_TREE
	  && FUNC0 (FUNC6 (field)))
	{
	  tree subfield = FUNC9 (FUNC6 (field), type);
	  if (subfield)
	    return subfield;
	}
    }
  return NULL_TREE;
}