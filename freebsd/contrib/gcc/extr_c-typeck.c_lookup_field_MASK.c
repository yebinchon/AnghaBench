#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct TYPE_4__ {TYPE_1__* s; } ;
struct TYPE_3__ {scalar_t__* elts; int len; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ RECORD_TYPE ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 TYPE_2__* FUNC5 (scalar_t__) ; 
 scalar_t__ UNION_TYPE ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static tree
FUNC7 (tree decl, tree component)
{
  tree type = FUNC3 (decl);
  tree field;

  /* If TYPE_LANG_SPECIFIC is set, then it is a sorted array of pointers
     to the field elements.  Use a binary search on this array to quickly
     find the element.  Otherwise, do a linear search.  TYPE_LANG_SPECIFIC
     will always be set for structures which have many elements.  */

  if (FUNC5 (type) && FUNC5 (type)->s)
    {
      int bot, top, half;
      tree *field_array = &FUNC5 (type)->s->elts[0];

      field = FUNC4 (type);
      bot = 0;
      top = FUNC5 (type)->s->len;
      while (top - bot > 1)
	{
	  half = (top - bot + 1) >> 1;
	  field = field_array[bot+half];

	  if (FUNC0 (field) == NULL_TREE)
	    {
	      /* Step through all anon unions in linear fashion.  */
	      while (FUNC0 (field_array[bot]) == NULL_TREE)
		{
		  field = field_array[bot++];
		  if (FUNC2 (FUNC3 (field)) == RECORD_TYPE
		      || FUNC2 (FUNC3 (field)) == UNION_TYPE)
		    {
		      tree anon = FUNC7 (field, component);

		      if (anon)
			return FUNC6 (NULL_TREE, field, anon);
		    }
		}

	      /* Entire record is only anon unions.  */
	      if (bot > top)
		return NULL_TREE;

	      /* Restart the binary search, with new lower bound.  */
	      continue;
	    }

	  if (FUNC0 (field) == component)
	    break;
	  if (FUNC0 (field) < component)
	    bot += half;
	  else
	    top = bot + half;
	}

      if (FUNC0 (field_array[bot]) == component)
	field = field_array[bot];
      else if (FUNC0 (field) != component)
	return NULL_TREE;
    }
  else
    {
      for (field = FUNC4 (type); field; field = FUNC1 (field))
	{
	  if (FUNC0 (field) == NULL_TREE
	      && (FUNC2 (FUNC3 (field)) == RECORD_TYPE
		  || FUNC2 (FUNC3 (field)) == UNION_TYPE))
	    {
	      tree anon = FUNC7 (field, component);

	      if (anon)
		return FUNC6 (NULL_TREE, field, anon);
	    }

	  if (FUNC0 (field) == component)
	    break;
	}

      if (field == NULL_TREE)
	return NULL_TREE;
    }

  return FUNC6 (NULL_TREE, field, NULL_TREE);
}