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
 int /*<<< orphan*/  NULL_TREE ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ UNION_TYPE ; 
 scalar_t__ FUNC7 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static tree
FUNC8 (tree t, tree list, int *uses_unions_p)
{
  tree fields;

  *uses_unions_p = 0;

  /* Note whether or not T is a union.  */
  if (FUNC4 (t) == UNION_TYPE)
    *uses_unions_p = 1;

  for (fields = FUNC6 (t); fields; fields = FUNC3 (fields))
    {
      /* Skip CONST_DECLs for enumeration constants and so forth.  */
      if (FUNC4 (fields) != FIELD_DECL || FUNC1 (fields))
	continue;

      /* Keep track of whether or not any fields are unions.  */
      if (FUNC4 (FUNC5 (fields)) == UNION_TYPE)
	*uses_unions_p = 1;

      /* For an anonymous struct or union, we must recursively
	 consider the fields of the anonymous type.  They can be
	 directly initialized from the constructor.  */
      if (FUNC0 (FUNC5 (fields)))
	{
	  /* Add this field itself.  Synthesized copy constructors
	     initialize the entire aggregate.  */
	  list = FUNC7 (fields, NULL_TREE, list);
	  /* And now add the fields in the anonymous aggregate.  */
	  list = FUNC8 (FUNC5 (fields), list,
				   uses_unions_p);
	}
      /* Add this field.  */
      else if (FUNC2 (fields))
	list = FUNC7 (fields, NULL_TREE, list);
    }

  return list;
}