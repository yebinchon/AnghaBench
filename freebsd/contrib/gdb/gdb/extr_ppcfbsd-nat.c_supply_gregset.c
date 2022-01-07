
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ppcfbsd_supply_reg (char*,int) ;

void
supply_gregset (char *regs)
{
  ppcfbsd_supply_reg (regs, -1);
}
