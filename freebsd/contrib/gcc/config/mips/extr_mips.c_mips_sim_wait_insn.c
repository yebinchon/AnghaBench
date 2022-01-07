
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mips_sim {int dummy; } ;
typedef int rtx ;


 int mips_sim_wait_regs (struct mips_sim*,int ) ;
 int mips_sim_wait_units (struct mips_sim*,int ) ;

__attribute__((used)) static void
mips_sim_wait_insn (struct mips_sim *state, rtx insn)
{
  mips_sim_wait_regs (state, insn);
  mips_sim_wait_units (state, insn);
}
