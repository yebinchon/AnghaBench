
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ rtx ;
typedef enum DEPS_ADJUST_RESULT { ____Placeholder_DEPS_ADJUST_RESULT } DEPS_ADJUST_RESULT ;
typedef TYPE_1__* basic_block ;
struct TYPE_8__ {int flags; } ;
struct TYPE_7__ {struct TYPE_7__* aux; } ;


 scalar_t__ BB_END (TYPE_1__*) ;
 int BEGIN_CONTROL ;
 TYPE_1__* BLOCK_FOR_INSN (scalar_t__) ;
 int DEP_ANTI ;
 int DEP_CHANGED ;
 int DEP_CREATED ;
 int DO_SPECULATION ;
 scalar_t__ INSN_P (scalar_t__) ;

 int LOG_LINKS (scalar_t__) ;
 int MAX_DEP_WEAK ;
 scalar_t__ NEXT_INSN (scalar_t__) ;
 scalar_t__ NULL_RTX ;


 int REG_DEP_ANTI ;

 int add_forw_dep (scalar_t__,int ) ;
 int add_or_update_back_dep (scalar_t__,scalar_t__,int ,int ) ;
 int add_or_update_back_forw_dep (scalar_t__,scalar_t__,int ,int ) ;
 scalar_t__ control_flow_insn_p (scalar_t__) ;
 TYPE_4__* current_sched_info ;
 TYPE_1__* earliest_block_with_similiar_load (TYPE_1__*,scalar_t__) ;
 int flag_schedule_speculative_load ;
 int gcc_assert (int) ;
 int haifa_classify_insn (scalar_t__) ;
 int sched_insns_conditions_mutex_p (scalar_t__,scalar_t__) ;
 int set_dep_weak (int ,int ,int ) ;

__attribute__((used)) static void
add_deps_for_risky_insns (rtx head, rtx tail)
{
  rtx insn, prev;
  int class;
  rtx last_jump = NULL_RTX;
  rtx next_tail = NEXT_INSN (tail);
  basic_block last_block = ((void*)0), bb;

  for (insn = head; insn != next_tail; insn = NEXT_INSN (insn))
    if (control_flow_insn_p (insn))
      {
 bb = BLOCK_FOR_INSN (insn);
 bb->aux = last_block;
 last_block = bb;
 last_jump = insn;
      }
    else if (INSN_P (insn) && last_jump != NULL_RTX)
      {
 class = haifa_classify_insn (insn);
 prev = last_jump;
 switch (class)
   {
   case 130:
     if (flag_schedule_speculative_load)
       {
  bb = earliest_block_with_similiar_load (last_block, insn);
  if (bb)
    {
      bb = bb->aux;
      if (!bb)
        break;
      prev = BB_END (bb);
    }
       }

   case 128:
   case 131:
   case 129:





     if (! sched_insns_conditions_mutex_p (insn, prev))
       {
  if (!(current_sched_info->flags & DO_SPECULATION))
    {
      enum DEPS_ADJUST_RESULT res;

      res = add_or_update_back_dep (insn, prev,
        REG_DEP_ANTI, DEP_ANTI);

      if (res == DEP_CREATED)
        add_forw_dep (insn, LOG_LINKS (insn));
      else
        gcc_assert (res != DEP_CHANGED);
    }
  else
    add_or_update_back_forw_dep (insn, prev, REG_DEP_ANTI,
            set_dep_weak (DEP_ANTI,
            BEGIN_CONTROL,
            MAX_DEP_WEAK));
       }

            break;

          default:
            break;
   }
      }

  while (last_block)
    {
      bb = last_block->aux;
      last_block->aux = ((void*)0);
      last_block = bb;
    }
}
