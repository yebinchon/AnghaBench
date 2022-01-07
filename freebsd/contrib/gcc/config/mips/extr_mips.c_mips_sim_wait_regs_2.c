
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ REG_P (int ) ;
 int mips_sim_insn ;
 int mips_sim_wait_reg (void*,int ,int ) ;

__attribute__((used)) static int
mips_sim_wait_regs_2 (rtx *x, void *data)
{
  if (REG_P (*x))
    mips_sim_wait_reg (data, mips_sim_insn, *x);
  return 0;
}
