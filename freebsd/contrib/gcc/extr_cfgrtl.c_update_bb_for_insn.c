
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef int basic_block ;


 int BARRIER_P (scalar_t__) ;
 scalar_t__ BB_END (int ) ;
 scalar_t__ BB_HEAD (int ) ;
 scalar_t__ NEXT_INSN (scalar_t__) ;
 int set_block_for_insn (scalar_t__,int ) ;

void
update_bb_for_insn (basic_block bb)
{
  rtx insn;

  for (insn = BB_HEAD (bb); ; insn = NEXT_INSN (insn))
    {
      if (!BARRIER_P (insn))
 set_block_for_insn (insn, bb);
      if (insn == BB_END (bb))
 break;
    }
}
