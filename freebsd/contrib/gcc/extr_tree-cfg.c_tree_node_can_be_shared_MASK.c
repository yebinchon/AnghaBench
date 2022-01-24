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
 scalar_t__ ARRAY_RANGE_REF ; 
 scalar_t__ ARRAY_REF ; 
 scalar_t__ CASE_LABEL_EXPR ; 
 scalar_t__ COMPONENT_REF ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ IDENTIFIER_NODE ; 
 scalar_t__ IMAGPART_EXPR ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ REALPART_EXPR ; 
 scalar_t__ SSA_NAME ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,int) ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ FUNC4 (scalar_t__) ; 

__attribute__((used)) static bool
FUNC5 (tree t)
{
  if (FUNC1 (t)
      || FUNC4 (t)
      || FUNC2 (t) == SSA_NAME
      || t == error_mark_node
      || FUNC2 (t) == IDENTIFIER_NODE)
    return true;

  if (FUNC2 (t) == CASE_LABEL_EXPR)
    return true;

  while (((FUNC2 (t) == ARRAY_REF || FUNC2 (t) == ARRAY_RANGE_REF)
	   && FUNC4 (FUNC3 (t, 1)))
	 || FUNC2 (t) == COMPONENT_REF
	 || FUNC2 (t) == REALPART_EXPR
	 || FUNC2 (t) == IMAGPART_EXPR)
    t = FUNC3 (t, 0);

  if (FUNC0 (t))
    return true;

  return false;
}