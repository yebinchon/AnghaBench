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
 int TDF_STATS ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int /*<<< orphan*/  current_loops ; 
 scalar_t__ dump_file ; 
 int dump_flags ; 
 int exit_conditions ; 
 int /*<<< orphan*/  heap ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  tree ; 

void
FUNC6 (void)
{
  FUNC0(tree,heap) *exit_conditions;
  
  exit_conditions = FUNC1 (tree, heap, 37);
  FUNC5 (current_loops, &exit_conditions);

  if (dump_file && (dump_flags & TDF_STATS))
    FUNC3 (&exit_conditions);
  
  FUNC4 (&exit_conditions);
  FUNC2 (tree, heap, exit_conditions);
}