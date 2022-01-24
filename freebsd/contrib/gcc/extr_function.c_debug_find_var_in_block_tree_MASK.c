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
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC2 (scalar_t__) ; 

tree
FUNC3 (tree var, tree block)
{
  tree t;

  for (t = FUNC1 (block); t; t = FUNC2 (t))
    if (t == var)
      return block;

  for (t = FUNC0 (block); t; t = FUNC2 (t))
    {
      tree ret = FUNC3 (var, t);
      if (ret)
	return ret;
    }

  return NULL_TREE;
}