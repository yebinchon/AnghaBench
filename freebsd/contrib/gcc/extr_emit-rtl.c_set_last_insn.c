
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int NEXT_INSN (int ) ;
 int gcc_assert (int) ;
 int last_insn ;

void
set_last_insn (rtx insn)
{
  gcc_assert (!NEXT_INSN (insn));
  last_insn = insn;
}
