
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pinfo; unsigned long mask; unsigned long match; } ;


 int INSN_COND_BRANCH_DELAY ;
 int INSN_COND_BRANCH_LIKELY ;
 int INSN_MACRO ;
 int INSN_UNCOND_BRANCH_DELAY ;
 int NUMOPCODES ;
 TYPE_1__* mips_opcodes ;

__attribute__((used)) static int
is_delayed (unsigned long insn)
{
  int i;
  for (i = 0; i < NUMOPCODES; ++i)
    if (mips_opcodes[i].pinfo != INSN_MACRO
 && (insn & mips_opcodes[i].mask) == mips_opcodes[i].match)
      break;
  return (i < NUMOPCODES
   && (mips_opcodes[i].pinfo & (INSN_UNCOND_BRANCH_DELAY
           | INSN_COND_BRANCH_DELAY
           | INSN_COND_BRANCH_LIKELY)));
}
