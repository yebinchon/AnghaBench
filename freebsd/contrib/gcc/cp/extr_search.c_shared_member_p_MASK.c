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
 scalar_t__ CONST_DECL ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ TYPE_DECL ; 
 scalar_t__ VAR_DECL ; 
 scalar_t__ FUNC4 (scalar_t__) ; 

int
FUNC5 (tree t)
{
  if (FUNC3 (t) == VAR_DECL || FUNC3 (t) == TYPE_DECL \
      || FUNC3 (t) == CONST_DECL)
    return 1;
  if (FUNC4 (t))
    {
      for (; t; t = FUNC2 (t))
	{
	  tree fn = FUNC1 (t);
	  if (FUNC0 (fn))
	    return 0;
	}
      return 1;
    }
  return 0;
}