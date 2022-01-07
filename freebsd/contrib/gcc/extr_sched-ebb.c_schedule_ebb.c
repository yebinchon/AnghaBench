
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_9__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct deps {int dummy; } ;
typedef scalar_t__ rtx ;
typedef TYPE_2__* basic_block ;
struct TYPE_14__ {int queue_must_finish_empty; scalar_t__ tail; scalar_t__ head; int next_tail; int prev_head; scalar_t__ sched_max_insns_priority; } ;
struct TYPE_11__ {int (* dependencies_evaluation_hook ) (scalar_t__,scalar_t__) ;} ;
struct TYPE_13__ {TYPE_1__ sched; } ;
struct TYPE_12__ {int next_bb; struct TYPE_12__* prev_bb; int succs; int preds; int index; } ;


 TYPE_2__* BLOCK_FOR_INSN (scalar_t__) ;
 scalar_t__ EDGE_COUNT (int ) ;
 scalar_t__ INSN_P (scalar_t__) ;
 int NEXT_INSN (scalar_t__) ;
 scalar_t__ NO_DEBUG ;
 int PREV_INSN (scalar_t__) ;
 scalar_t__ REG_NOTES (scalar_t__) ;
 scalar_t__ REG_NOTE_KIND (scalar_t__) ;
 scalar_t__ REG_SAVE_NOTE ;
 scalar_t__ XEXP (scalar_t__,int) ;
 int add_deps_for_risky_insns (scalar_t__,scalar_t__) ;
 int bitmap_bit_p (int *,int ) ;
 int compute_forward_dependences (scalar_t__,scalar_t__) ;
 TYPE_9__* current_sched_info ;
 int delete_basic_block (int ) ;
 int dont_calc_deps ;
 int finish_deps_global () ;
 int free_deps (struct deps*) ;
 int gcc_assert (int) ;
 int init_deps (struct deps*) ;
 int init_deps_global () ;
 TYPE_2__* last_bb ;
 scalar_t__ n_insns ;
 scalar_t__ no_real_insns_p (scalar_t__,scalar_t__) ;
 int remove_note (scalar_t__,scalar_t__) ;
 int restore_line_notes (scalar_t__,scalar_t__) ;
 int rm_line_notes (scalar_t__,scalar_t__) ;
 int rm_other_notes (scalar_t__,scalar_t__) ;
 int save_line_notes (int ,scalar_t__,scalar_t__) ;
 int sched_analyze (struct deps*,scalar_t__,scalar_t__) ;
 scalar_t__ sched_n_insns ;
 int schedule_block (TYPE_2__**,scalar_t__) ;
 scalar_t__ set_priorities (scalar_t__,scalar_t__) ;
 int stub1 (scalar_t__,scalar_t__) ;
 TYPE_5__ targetm ;
 int unlink_bb_notes (TYPE_2__*,TYPE_2__*) ;
 scalar_t__ write_symbols ;

__attribute__((used)) static basic_block
schedule_ebb (rtx head, rtx tail)
{
  basic_block first_bb, target_bb;
  struct deps tmp_deps;

  first_bb = BLOCK_FOR_INSN (head);
  last_bb = BLOCK_FOR_INSN (tail);

  if (no_real_insns_p (head, tail))
    return BLOCK_FOR_INSN (tail);

  gcc_assert (INSN_P (head) && INSN_P (tail));

  if (!bitmap_bit_p (&dont_calc_deps, first_bb->index))
    {
      init_deps_global ();


      init_deps (&tmp_deps);
      sched_analyze (&tmp_deps, head, tail);
      free_deps (&tmp_deps);


      compute_forward_dependences (head, tail);

      add_deps_for_risky_insns (head, tail);

      if (targetm.sched.dependencies_evaluation_hook)
        targetm.sched.dependencies_evaluation_hook (head, tail);

      finish_deps_global ();
    }
  else


    gcc_assert (first_bb == last_bb);


  current_sched_info->sched_max_insns_priority = 0;
  n_insns = set_priorities (head, tail);
  current_sched_info->sched_max_insns_priority++;

  current_sched_info->prev_head = PREV_INSN (head);
  current_sched_info->next_tail = NEXT_INSN (tail);

  if (write_symbols != NO_DEBUG)
    {
      save_line_notes (first_bb->index, head, tail);
      rm_line_notes (head, tail);
    }







  if (INSN_P (head))
    {
      rtx note;

      for (note = REG_NOTES (head); note; note = XEXP (note, 1))
 if (REG_NOTE_KIND (note) == REG_SAVE_NOTE)
   remove_note (head, note);
    }




  rm_other_notes (head, tail);

  unlink_bb_notes (first_bb, last_bb);

  current_sched_info->queue_must_finish_empty = 1;

  target_bb = first_bb;
  schedule_block (&target_bb, n_insns);





  gcc_assert (sched_n_insns == n_insns);
  head = current_sched_info->head;
  tail = current_sched_info->tail;

  if (write_symbols != NO_DEBUG)
    restore_line_notes (head, tail);

  if (EDGE_COUNT (last_bb->preds) == 0)

    {
      gcc_assert (first_bb != last_bb
    && EDGE_COUNT (last_bb->succs) == 0);
      last_bb = last_bb->prev_bb;
      delete_basic_block (last_bb->next_bb);
    }

  return last_bb;
}
