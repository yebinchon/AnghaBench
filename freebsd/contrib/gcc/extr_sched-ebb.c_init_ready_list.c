
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ rtx ;
struct TYPE_2__ {scalar_t__ prev_head; scalar_t__ next_tail; } ;


 scalar_t__ NEXT_INSN (scalar_t__) ;
 TYPE_1__* current_sched_info ;
 int debug_dependencies () ;
 int gcc_assert (int) ;
 int n_insns ;
 scalar_t__ sched_n_insns ;
 int sched_verbose ;
 int try_ready (scalar_t__) ;

__attribute__((used)) static void
init_ready_list (void)
{
  int n = 0;
  rtx prev_head = current_sched_info->prev_head;
  rtx next_tail = current_sched_info->next_tail;
  rtx insn;

  sched_n_insns = 0;
  for (insn = NEXT_INSN (prev_head); insn != next_tail; insn = NEXT_INSN (insn))
    {
      try_ready (insn);
      n++;
    }

  gcc_assert (n == n_insns);
}
