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
 scalar_t__ COMPOUND_EXPR ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,int) ; 
 scalar_t__ error_mark_node ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static tree
FUNC3 (tree value, tree endtype)
{
  if (FUNC0 (value) == COMPOUND_EXPR)
    {
      if (FUNC3 (FUNC1 (value, 0), endtype)
	  == error_mark_node)
	return error_mark_node;
      return FUNC3 (FUNC1 (value, 1),
					      endtype);
    }
  else if (!FUNC2 (value, endtype))
    return error_mark_node;
  else
    return value;
}