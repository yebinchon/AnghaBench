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
typedef  scalar_t__ rtx ;
struct TYPE_2__ {scalar_t__ prev_head; scalar_t__ next_tail; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 TYPE_1__* current_sched_info ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int n_insns ; 
 scalar_t__ sched_n_insns ; 
 int sched_verbose ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static void
FUNC4 (void)
{
  int n = 0;
  rtx prev_head = current_sched_info->prev_head;
  rtx next_tail = current_sched_info->next_tail;
  rtx insn;

  sched_n_insns = 0;

#if 0
  /* Print debugging information.  */
  if (sched_verbose >= 5)
    debug_dependencies ();
#endif

  /* Initialize ready list with all 'ready' insns in target block.
     Count number of insns in the target block being scheduled.  */
  for (insn = FUNC0 (prev_head); insn != next_tail; insn = FUNC0 (insn))
    {
      FUNC3 (insn);
      n++;
    }

  FUNC2 (n == n_insns);
}