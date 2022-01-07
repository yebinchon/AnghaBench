
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int alpha_fill_fp_regs (int,char*,char*) ;

void
alphabsd_fill_fpreg (char *fpregs, int regno)
{

  alpha_fill_fp_regs (regno, fpregs, fpregs + 32*8);
}
