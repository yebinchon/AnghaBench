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
typedef  int /*<<< orphan*/ * tree ;

/* Variables and functions */
 scalar_t__ ARRAY_TYPE ; 
 scalar_t__ DFmode ; 
 scalar_t__ FIELD_DECL ; 
 unsigned int FUNC0 (unsigned int,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * error_mark_node ; 

unsigned int
FUNC6 (tree type, unsigned int computed,
				 unsigned int specified)
{
  unsigned int align = FUNC0 (computed, specified);
  tree field = FUNC4 (type);

  /* Skip all non field decls */
  while (field != NULL && FUNC2 (field) != FIELD_DECL)
    field = FUNC1 (field);

  if (field != NULL && field != type)
    {
      type = FUNC3 (field);
      while (FUNC2 (type) == ARRAY_TYPE)
	type = FUNC3 (type);

      if (type != error_mark_node && FUNC5 (type) == DFmode)
	align = FUNC0 (align, 64);
    }

  return align;
}