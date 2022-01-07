
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ppcfbsd_fill_reg (char*,int) ;

void
fill_gregset (char *regs, int regnum)
{
  ppcfbsd_fill_reg (regs, regnum);
}
