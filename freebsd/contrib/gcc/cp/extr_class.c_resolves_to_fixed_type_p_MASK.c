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
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 

int
FUNC4 (tree instance, int* nonnull)
{
  tree t = FUNC1 (instance);
  int cdtorp = 0;

  tree fixed = FUNC2 (instance, nonnull, &cdtorp);
  if (fixed == NULL_TREE)
    return 0;
  if (FUNC0 (t))
    t = FUNC1 (t);
  if (!FUNC3 (t, fixed))
    return 0;
  return cdtorp ? -1 : 1;
}