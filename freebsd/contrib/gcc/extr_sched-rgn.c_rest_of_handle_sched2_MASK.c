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
 int /*<<< orphan*/  CLEANUP_EXPENSIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ flag_sched2_use_superblocks ; 
 scalar_t__ flag_sched2_use_traces ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static unsigned int
FUNC5 (void)
{
#ifdef INSN_SCHEDULING
  /* Do control and data sched analysis again,
     and write some more of the results to dump file.  */

  split_all_insns (1);

  if (flag_sched2_use_superblocks || flag_sched2_use_traces)
    {
      schedule_ebbs ();
      /* No liveness updating code yet, but it should be easy to do.
         reg-stack recomputes the liveness when needed for now.  */
      count_or_remove_death_notes (NULL, 1);
      cleanup_cfg (CLEANUP_EXPENSIVE);
    }
  else
    schedule_insns ();
#endif
  return 0;
}