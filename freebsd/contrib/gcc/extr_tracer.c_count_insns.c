
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef int basic_block ;


 scalar_t__ BB_END (int ) ;
 scalar_t__ BB_HEAD (int ) ;
 scalar_t__ NEXT_INSN (scalar_t__) ;
 scalar_t__ active_insn_p (scalar_t__) ;

__attribute__((used)) static int
count_insns (basic_block bb)
{
  rtx insn;
  int n = 0;

  for (insn = BB_HEAD (bb);
       insn != NEXT_INSN (BB_END (bb));
       insn = NEXT_INSN (insn))
    if (active_insn_p (insn))
      n++;
  return n;
}
