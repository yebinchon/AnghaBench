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
 scalar_t__ FUNCTION_DECL ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ OVERLOAD ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 

tree
FUNC5 (tree fns)
{
  if (!fns)
    return fns;

  if (FUNC2 (fns) == FUNCTION_DECL && FUNC4 (fns))
    fns = NULL_TREE;
  else if (FUNC2 (fns) == OVERLOAD)
    {
      tree o;

      for (o = fns; o; o = FUNC1 (o))
	if (FUNC4 (FUNC0 (o)))
	  break;
      if (o)
	{
	  tree n = NULL_TREE;

	  for (o = fns; o; o = FUNC1 (o))
	    if (!FUNC4 (FUNC0 (o)))
	      n = FUNC3 (FUNC0 (o), n);
	  fns = n;
	}
    }

  return fns;
}