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
 scalar_t__ FUNCTION_TYPE ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

tree
FUNC6 (tree type, tree attributes)
{
  tree new_type;

  new_type = FUNC4 (type, attributes);
  if (FUNC1 (new_type) == FUNCTION_TYPE
      && (FUNC2 (new_type)
	  != FUNC2 (type)))
    new_type = FUNC3 (new_type,
					FUNC2 (type));

  /* Making a new main variant of a class type is broken.  */
  FUNC5 (!FUNC0 (type) || new_type == type);
    
  return new_type;
}