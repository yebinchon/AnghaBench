
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CANNOT_STORE_REGISTER (int) ;
 int PC_REGNUM ;
 int current_gdbarch ;
 int mips_regsize (int ) ;
 int regcache_collect (int,char*) ;

void
mipsfbsd_fill_reg (char *regs, int regno)
{
  int i;

  for (i = 0; i <= PC_REGNUM; i++)
    if ((regno == i || regno == -1) && ! CANNOT_STORE_REGISTER (i))
      regcache_collect (i, regs + (i * mips_regsize (current_gdbarch)));
}
