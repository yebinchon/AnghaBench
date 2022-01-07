
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ppcfbsd_supply_fpreg (char*,int) ;

void
supply_fpregset (char *fpregs)
{
  ppcfbsd_supply_fpreg (fpregs, -1);
}
