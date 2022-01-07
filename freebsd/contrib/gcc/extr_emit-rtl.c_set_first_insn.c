
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int PREV_INSN (int ) ;
 int first_insn ;
 int gcc_assert (int) ;

void
set_first_insn (rtx insn)
{
  gcc_assert (!PREV_INSN (insn));
  first_insn = insn;
}
