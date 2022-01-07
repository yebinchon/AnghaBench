
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int alpha_fill_int_regs (int,char*,char*,int *) ;

void
alphabsd_fill_reg (char *regs, int regno)
{

  alpha_fill_int_regs (regno, regs, regs + 31*8, ((void*)0));
}
