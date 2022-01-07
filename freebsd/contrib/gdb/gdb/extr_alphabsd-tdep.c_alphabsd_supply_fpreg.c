
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int alpha_supply_fp_regs (int,char*,char*) ;

void
alphabsd_supply_fpreg (char *fpregs, int regno)
{

  alpha_supply_fp_regs (regno, fpregs, fpregs + 32*8);
}
