
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int dump_insn_slim (int ,int ) ;
 int stderr ;

void
debug_insn_slim (rtx x)
{
  dump_insn_slim (stderr, x);
}
