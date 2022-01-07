
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef int basic_block ;


 scalar_t__ BB_END (int ) ;
 scalar_t__ BB_HEAD (int ) ;
 int CALL_P (scalar_t__) ;
 scalar_t__ PREV_INSN (scalar_t__) ;
 scalar_t__ keep_with_call_p (scalar_t__) ;

__attribute__((used)) static bool
rtl_block_ends_with_call_p (basic_block bb)
{
  rtx insn = BB_END (bb);

  while (!CALL_P (insn)
  && insn != BB_HEAD (bb)
  && keep_with_call_p (insn))
    insn = PREV_INSN (insn);
  return (CALL_P (insn));
}
