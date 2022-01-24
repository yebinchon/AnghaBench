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
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNCTION_DECL ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ TYPE_DECL ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__) ; 

int
FUNC8 (tree decl, tree tmpl)
{
  tree t;

  if (FUNC4 (decl) == FUNCTION_DECL)
    {
      for (t = decl;
	   t != NULL_TREE;
	   t = FUNC2 (t) ? FUNC3 (t) : NULL_TREE)
	if (t == tmpl)
	  return 1;
    }
  else
    {
      FUNC6 (FUNC4 (decl) == TYPE_DECL);

      for (t = FUNC5 (decl);
	   t != NULL_TREE;
	   t = FUNC1 (t)
	     ? FUNC5 (FUNC0 (t)) : NULL_TREE)
	if (FUNC7 (t, FUNC5 (tmpl)))
	  return 1;
    }

  return 0;
}