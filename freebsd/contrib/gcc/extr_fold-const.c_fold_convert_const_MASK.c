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
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;

/* Variables and functions */
 scalar_t__ INTEGER_CST ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ REAL_CST ; 
 scalar_t__ REAL_TYPE ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC6 (int,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static tree
FUNC8 (enum tree_code code, tree type, tree arg1)
{
  if (FUNC3 (arg1) == type)
    return arg1;

  if (FUNC1 (type) || FUNC0 (type))
    {
      if (FUNC2 (arg1) == INTEGER_CST)
	return FUNC5 (type, arg1);
      else if (FUNC2 (arg1) == REAL_CST)
	return FUNC6 (code, type, arg1);
    }
  else if (FUNC2 (type) == REAL_TYPE)
    {
      if (FUNC2 (arg1) == INTEGER_CST)
	return FUNC4 (type, arg1);
      if (FUNC2 (arg1) == REAL_CST)
	return FUNC7 (type, arg1);
    }
  return NULL_TREE;
}