
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ppcfbsd_fill_fpreg (char*,int) ;

void
fill_fpregset (char *fpregs, int regnum)
{
  ppcfbsd_fill_fpreg (fpregs, regnum);
}
