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
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ POINTER_TYPE ; 
 scalar_t__ RECORD_TYPE ; 
 scalar_t__ REFERENCE_TYPE ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,int) ; 
 int FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ VOID_TYPE ; 
 scalar_t__ error_mark_node ; 

__attribute__((used)) static bool
FUNC7 (tree type)
{
  if (type == error_mark_node)
    return false;

  if (FUNC2 (type) == VOID_TYPE || FUNC6 (type))
    return true;
  if (FUNC2 (type) == POINTER_TYPE || FUNC2 (type) == REFERENCE_TYPE)
    {
      type = FUNC3 (type);
      if (FUNC2 (type) == RECORD_TYPE)
	{
	  tree args;  int i;
	  if (! FUNC6 (type))
	    return false;
	  if (! FUNC0 (type))
	    return true;
	  args = FUNC1 (type);
	  i = FUNC5 (args);
	  while (--i >= 0)
	    {
	      type = FUNC4 (args, i);
	      if (FUNC2 (type) == POINTER_TYPE)
		type = FUNC3 (type);
	      if (! FUNC6 (type))
		return false;
	    }
	  return true;
	}
    }
  return false;
}