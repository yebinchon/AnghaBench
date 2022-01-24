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
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int DO_SPECULATION ; 
 scalar_t__ PROCESSOR_ITANIUM ; 
 int /*<<< orphan*/ * add_cycles ; 
 int /*<<< orphan*/ * clocks ; 
 int clocks_length ; 
 TYPE_1__* current_sched_info ; 
 int FUNC0 () ; 
 scalar_t__ ia64_tune ; 
 int max_uid ; 
 int /*<<< orphan*/ * spec_check_no ; 
 int /*<<< orphan*/ * stops_p ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int,int,int) ; 

__attribute__((used)) static void
FUNC2 (void)
{
  if (current_sched_info->flags & DO_SPECULATION)
    {
      int new_max_uid = FUNC0 () + 1;

      spec_check_no = FUNC1 (spec_check_no, new_max_uid,
				 max_uid, sizeof (*spec_check_no));
      max_uid = new_max_uid;
    }

  if (stops_p != NULL) 
    {
      int new_clocks_length = FUNC0 () + 1;
      
      stops_p = FUNC1 (stops_p, new_clocks_length, clocks_length, 1);
      
      if (ia64_tune == PROCESSOR_ITANIUM)
	{
	  clocks = FUNC1 (clocks, new_clocks_length, clocks_length,
			      sizeof (int));
	  add_cycles = FUNC1 (add_cycles, new_clocks_length, clocks_length,
				  sizeof (int));
	}
      
      clocks_length = new_clocks_length;
    }
}