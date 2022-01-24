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
struct TYPE_2__ {int /*<<< orphan*/  prev_head; int /*<<< orphan*/  next_tail; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 TYPE_1__* current_sched_info ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ reload_completed ; 
 scalar_t__ rs6000_sched_groups ; 
 scalar_t__ rs6000_sched_insert_nops ; 
 scalar_t__ sched_finish_none ; 
 scalar_t__ sched_finish_pad_groups ; 

__attribute__((used)) static void
FUNC4 (FILE *dump, int sched_verbose)
{
  int n_groups;

  if (sched_verbose)
    FUNC0 (dump, "=== Finishing schedule.\n");

  if (reload_completed && rs6000_sched_groups)
    {
      if (rs6000_sched_insert_nops == sched_finish_none)
	return;

      if (rs6000_sched_insert_nops == sched_finish_pad_groups)
	n_groups = FUNC1 (dump, sched_verbose,
			       current_sched_info->prev_head,
			       current_sched_info->next_tail);
      else
	n_groups = FUNC3 (dump, sched_verbose,
				    current_sched_info->prev_head,
				    current_sched_info->next_tail);

      if (sched_verbose >= 6)
	{
    	  FUNC0 (dump, "ngroups = %d\n", n_groups);
	  FUNC2 (dump, current_sched_info->prev_head);
	  FUNC0 (dump, "Done finish_sched\n");
	}
    }
}