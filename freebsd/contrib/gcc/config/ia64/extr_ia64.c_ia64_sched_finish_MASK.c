#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  next_tail; int /*<<< orphan*/  prev_head; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* current_sched_info ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ reload_completed ; 

__attribute__((used)) static void
FUNC6 (FILE *dump, int sched_verbose)
{
  if (sched_verbose)
    FUNC5 (dump, "// Finishing schedule.\n");
  if (!reload_completed)
    return;
  if (reload_completed)
    {
      FUNC4 (dump);
      FUNC3 (dump, sched_verbose, current_sched_info->prev_head,
		current_sched_info->next_tail);
      if (sched_verbose && dump)
	FUNC5 (dump, "//    finishing %d-%d\n",
		 FUNC0 (FUNC1 (current_sched_info->prev_head)),
		 FUNC0 (FUNC2 (current_sched_info->next_tail)));

      return;
    }
}