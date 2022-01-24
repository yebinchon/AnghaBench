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
 scalar_t__ PTRMEM_CST ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  pfn_identifier ; 

__attribute__((used)) static tree
FUNC3 (tree t)
{
  if (FUNC0 (t) == PTRMEM_CST)
    {
      tree delta;
      tree pfn;

      FUNC2 (t, &delta, &pfn);
      if (pfn)
	return pfn;
    }

  return FUNC1 (t, pfn_identifier);
}