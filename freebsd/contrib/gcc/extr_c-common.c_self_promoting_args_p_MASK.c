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
 scalar_t__ error_mark_node ; 
 scalar_t__ float_type_node ; 
 scalar_t__ void_type_node ; 

int
FUNC4 (tree parms)
{
  tree t;
  for (t = parms; t; t = FUNC0 (t))
    {
      tree type = FUNC1 (t);

      if (type == error_mark_node)
	continue;

      if (FUNC0 (t) == 0 && type != void_type_node)
	return 0;

      if (type == 0)
	return 0;

      if (FUNC2 (type) == float_type_node)
	return 0;

      if (FUNC3 (type))
	return 0;
    }
  return 1;
}