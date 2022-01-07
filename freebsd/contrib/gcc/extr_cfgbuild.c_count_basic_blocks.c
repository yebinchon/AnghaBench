
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 scalar_t__ BARRIER_P (scalar_t__) ;
 scalar_t__ LABEL_P (scalar_t__) ;
 scalar_t__ NEXT_INSN (scalar_t__) ;
 int NUM_FIXED_BLOCKS ;
 int VOIDmode ;
 int const0_rtx ;
 scalar_t__ control_flow_insn_p (scalar_t__) ;
 int emit_insn (int ) ;
 int gen_rtx_USE (int ,int ) ;
 scalar_t__ inside_basic_block_p (scalar_t__) ;

__attribute__((used)) static int
count_basic_blocks (rtx f)
{
  int count = NUM_FIXED_BLOCKS;
  bool saw_insn = 0;
  rtx insn;

  for (insn = f; insn; insn = NEXT_INSN (insn))
    {


      if ((LABEL_P (insn) || BARRIER_P (insn))
   && saw_insn)
 count++, saw_insn = 0;


      if (!saw_insn && inside_basic_block_p (insn))
 saw_insn = 1;


      if (saw_insn && control_flow_insn_p (insn))
 count++, saw_insn = 0;
    }

  if (saw_insn)
    count++;



  if (count == NUM_FIXED_BLOCKS)
    {
      emit_insn (gen_rtx_USE (VOIDmode, const0_rtx));
      count = NUM_FIXED_BLOCKS + 1;
    }

  return count;
}
