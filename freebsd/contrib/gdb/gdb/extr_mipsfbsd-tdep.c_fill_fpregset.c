
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gdb_fpregset_t ;


 int mipsfbsd_fill_fpreg (char*,int) ;

void
fill_fpregset (gdb_fpregset_t *fpregs, int regno)
{
  mipsfbsd_fill_fpreg ((char *)fpregs, regno);
}
