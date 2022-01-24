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
 unsigned int CLEANUP_EXPENSIVE ; 
 unsigned int CLEANUP_UPDATE_LIFE ; 
 scalar_t__ HAVE_conditional_execution ; 
 int /*<<< orphan*/  PROP_DEATH_NOTES ; 
 int /*<<< orphan*/  TV_TRACER ; 
 int /*<<< orphan*/  UPDATE_LIFE_GLOBAL_RM_NOTES ; 
 int FUNC0 (unsigned int) ; 
 scalar_t__ flag_reorder_blocks ; 
 scalar_t__ flag_reorder_blocks_and_partition ; 
 scalar_t__ flag_sched2_use_traces ; 
 scalar_t__ flag_schedule_insns_after_reload ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int
FUNC7 (void)
{
  bool changed;
  unsigned int liveness_flags;

  /* Last attempt to optimize CFG, as scheduling, peepholing and insn
     splitting possibly introduced more crossjumping opportunities.  */
  liveness_flags = (!HAVE_conditional_execution ? CLEANUP_UPDATE_LIFE : 0);
  changed = FUNC0 (CLEANUP_EXPENSIVE | liveness_flags);

  if (flag_sched2_use_traces && flag_schedule_insns_after_reload)
    {
      FUNC4 (TV_TRACER);
      FUNC5 (liveness_flags);
      FUNC3 (TV_TRACER);
    }

  if (flag_reorder_blocks || flag_reorder_blocks_and_partition)
    FUNC2 (liveness_flags);
  if (flag_reorder_blocks || flag_reorder_blocks_and_partition
      || (flag_sched2_use_traces && flag_schedule_insns_after_reload))
    changed |= FUNC0 (CLEANUP_EXPENSIVE | liveness_flags);

  /* On conditional execution targets we can not update the life cheaply, so
     we deffer the updating to after both cleanups.  This may lose some cases
     but should not be terribly bad.  */
  if (changed && HAVE_conditional_execution)
    FUNC6 (NULL, UPDATE_LIFE_GLOBAL_RM_NOTES,
		      PROP_DEATH_NOTES);

  /* Add NOTE_INSN_SWITCH_TEXT_SECTIONS notes.  */
  FUNC1 ();
  return 0;
}