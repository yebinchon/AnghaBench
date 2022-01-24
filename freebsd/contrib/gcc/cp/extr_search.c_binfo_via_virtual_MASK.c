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
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

tree
FUNC5 (tree binfo, tree limit)
{
  if (limit && !FUNC3 (limit))
    /* LIMIT has no virtual bases, so BINFO cannot be via one.  */
    return NULL_TREE;

  for (; binfo && !FUNC4 (FUNC1 (binfo), limit);
       binfo = FUNC0 (binfo))
    {
      if (FUNC2 (binfo))
	return binfo;
    }
  return NULL_TREE;
}