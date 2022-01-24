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
 int /*<<< orphan*/  MINUS_EXPR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 

tree
FUNC6 (tree type)
{
  tree index_type, min, max;

  /* If they did it with unspecified bounds, then we should have already
     given an error about it before we got here.  */
  if (! FUNC1 (type))
    return error_mark_node;

  index_type = FUNC1 (type);
  min = FUNC3 (index_type);
  max = FUNC2 (index_type);

  return (FUNC5 (min)
	  ? max
	  : FUNC4 (MINUS_EXPR, FUNC0 (max), max, min));
}