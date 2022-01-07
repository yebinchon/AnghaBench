
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ rtx ;
typedef TYPE_1__* basic_block ;
struct TYPE_9__ {struct TYPE_9__* next_bb; } ;


 scalar_t__ BB_END (TYPE_1__*) ;
 int BB_HEAD (TYPE_1__*) ;
 TYPE_1__* BLOCK_FOR_INSN (scalar_t__) ;
 int IS_SPECULATION_BRANCHY_CHECK_P (scalar_t__) ;
 scalar_t__ NOTE_INSN_BASIC_BLOCK_P (int ) ;
 scalar_t__ bb_note (TYPE_1__*) ;
 scalar_t__ control_flow_insn_p (scalar_t__) ;
 int gcc_assert (int) ;
 TYPE_1__* last_bb ;

__attribute__((used)) static basic_block
advance_target_bb (basic_block bb, rtx insn)
{
  if (insn)
    {
      if (BLOCK_FOR_INSN (insn) != bb
   && control_flow_insn_p (insn)



   && !IS_SPECULATION_BRANCHY_CHECK_P (insn)
   && !IS_SPECULATION_BRANCHY_CHECK_P (BB_END (bb)))
 {

   gcc_assert (!control_flow_insn_p (BB_END (bb))
        && NOTE_INSN_BASIC_BLOCK_P (BB_HEAD (bb->next_bb)));
   return bb;
 }
      else
 return 0;
    }
  else

    {
      do
 {
   gcc_assert (bb != last_bb);

   bb = bb->next_bb;
 }
      while (bb_note (bb) == BB_END (bb));

      return bb;
    }
}
