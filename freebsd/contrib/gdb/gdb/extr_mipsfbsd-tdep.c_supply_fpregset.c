
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gdb_fpregset_t ;


 int mipsfbsd_supply_fpreg (char*,int) ;

void
supply_fpregset (gdb_fpregset_t *fpregs)
{
  mipsfbsd_supply_fpreg((char *)fpregs, -1);
}
