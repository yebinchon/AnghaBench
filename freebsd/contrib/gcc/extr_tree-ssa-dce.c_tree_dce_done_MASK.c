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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * control_dependence_map ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  heap ; 
 int last_basic_block ; 
 int /*<<< orphan*/  last_stmt_necessary ; 
 int /*<<< orphan*/  processed ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tree ; 
 int /*<<< orphan*/  visited_control_parents ; 
 int /*<<< orphan*/  worklist ; 

__attribute__((used)) static void
FUNC4 (bool aggressive)
{
  if (aggressive)
    {
      int i;

      for (i = 0; i < last_basic_block; ++i)
	FUNC0 (control_dependence_map[i]);
      FUNC2 (control_dependence_map);

      FUNC3 (visited_control_parents);
      FUNC3 (last_stmt_necessary);
    }

  FUNC3 (processed);

  FUNC1 (tree, heap, worklist);
}