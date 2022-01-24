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
 scalar_t__ TREE_VEC ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__) ; 
 int FUNC3 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int
FUNC5 (tree ot, tree nt)
{
  if (nt == ot)
    return 1;

  if (FUNC0 (nt) == TREE_VEC)
    /* For member templates */
    return FUNC0 (ot) == TREE_VEC && FUNC2 (ot, nt);
  else if (FUNC1 (nt))
    return FUNC1 (ot) && FUNC4 (ot, nt);
  else if (FUNC0 (ot) == TREE_VEC || FUNC1 (ot))
    return 0;
  else
    return FUNC3 (ot, nt);
}