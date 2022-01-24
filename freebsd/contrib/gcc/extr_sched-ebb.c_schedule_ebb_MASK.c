#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_9__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct deps {int dummy; } ;
typedef  scalar_t__ rtx ;
typedef  TYPE_2__* basic_block ;
struct TYPE_14__ {int queue_must_finish_empty; scalar_t__ tail; scalar_t__ head; int /*<<< orphan*/  next_tail; int /*<<< orphan*/  prev_head; scalar_t__ sched_max_insns_priority; } ;
struct TYPE_11__ {int /*<<< orphan*/  (* dependencies_evaluation_hook ) (scalar_t__,scalar_t__) ;} ;
struct TYPE_13__ {TYPE_1__ sched; } ;
struct TYPE_12__ {int /*<<< orphan*/  next_bb; struct TYPE_12__* prev_bb; int /*<<< orphan*/  succs; int /*<<< orphan*/  preds; int /*<<< orphan*/  index; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ NO_DEBUG ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ REG_SAVE_NOTE ; 
 scalar_t__ FUNC7 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__) ; 
 TYPE_9__* current_sched_info ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dont_calc_deps ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (struct deps*) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (struct deps*) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 TYPE_2__* last_bb ; 
 scalar_t__ n_insns ; 
 scalar_t__ FUNC17 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC23 (struct deps*,scalar_t__,scalar_t__) ; 
 scalar_t__ sched_n_insns ; 
 int /*<<< orphan*/  FUNC24 (TYPE_2__**,scalar_t__) ; 
 scalar_t__ FUNC25 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC26 (scalar_t__,scalar_t__) ; 
 TYPE_5__ targetm ; 
 int /*<<< orphan*/  FUNC27 (TYPE_2__*,TYPE_2__*) ; 
 scalar_t__ write_symbols ; 

__attribute__((used)) static basic_block
FUNC28 (rtx head, rtx tail)
{
  basic_block first_bb, target_bb;
  struct deps tmp_deps;
  
  first_bb = FUNC0 (head);
  last_bb = FUNC0 (tail);

  if (FUNC17 (head, tail))
    return FUNC0 (tail);

  FUNC14 (FUNC2 (head) && FUNC2 (tail));

  if (!FUNC9 (&dont_calc_deps, first_bb->index))
    {
      FUNC16 ();

      /* Compute LOG_LINKS.  */
      FUNC15 (&tmp_deps);
      FUNC23 (&tmp_deps, head, tail);
      FUNC13 (&tmp_deps);

      /* Compute INSN_DEPEND.  */
      FUNC10 (head, tail);

      FUNC8 (head, tail);

      if (targetm.sched.dependencies_evaluation_hook)
        targetm.sched.dependencies_evaluation_hook (head, tail);

      FUNC12 ();
    }
  else
    /* Only recovery blocks can have their dependencies already calculated,
       and they always are single block ebbs.  */       
    FUNC14 (first_bb == last_bb);

  /* Set priorities.  */
  current_sched_info->sched_max_insns_priority = 0;
  n_insns = FUNC25 (head, tail);
  current_sched_info->sched_max_insns_priority++;

  current_sched_info->prev_head = FUNC4 (head);
  current_sched_info->next_tail = FUNC3 (tail);

  if (write_symbols != NO_DEBUG)
    {
      FUNC22 (first_bb->index, head, tail);
      FUNC20 (head, tail);
    }

  /* rm_other_notes only removes notes which are _inside_ the
     block---that is, it won't remove notes before the first real insn
     or after the last real insn of the block.  So if the first insn
     has a REG_SAVE_NOTE which would otherwise be emitted before the
     insn, it is redundant with the note before the start of the
     block, and so we have to take it out.  */
  if (FUNC2 (head))
    {
      rtx note;

      for (note = FUNC5 (head); note; note = FUNC7 (note, 1))
	if (FUNC6 (note) == REG_SAVE_NOTE)
	  FUNC18 (head, note);
    }

  /* Remove remaining note insns from the block, save them in
     note_list.  These notes are restored at the end of
     schedule_block ().  */
  FUNC21 (head, tail);

  FUNC27 (first_bb, last_bb);

  current_sched_info->queue_must_finish_empty = 1;

  target_bb = first_bb;
  FUNC24 (&target_bb, n_insns);

  /* We might pack all instructions into fewer blocks,
     so we may made some of them empty.  Can't assert (b == last_bb).  */
  
  /* Sanity check: verify that all region insns were scheduled.  */
  FUNC14 (sched_n_insns == n_insns);
  head = current_sched_info->head;
  tail = current_sched_info->tail;

  if (write_symbols != NO_DEBUG)
    FUNC19 (head, tail);

  if (FUNC1 (last_bb->preds) == 0)
    /* LAST_BB is unreachable.  */
    {
      FUNC14 (first_bb != last_bb
		  && FUNC1 (last_bb->succs) == 0);
      last_bb = last_bb->prev_bb;
      FUNC11 (last_bb->next_bb);
    }

  return last_bb;
}