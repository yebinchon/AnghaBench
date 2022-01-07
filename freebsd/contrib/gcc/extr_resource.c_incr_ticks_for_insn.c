
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int MAX_DELAY_SLOT_LIVE_SEARCH ;
 int * bb_ticks ;
 int find_basic_block (int ,int ) ;

void
incr_ticks_for_insn (rtx insn)
{
  int b = find_basic_block (insn, MAX_DELAY_SLOT_LIVE_SEARCH);

  if (b != -1)
    bb_ticks[b]++;
}
