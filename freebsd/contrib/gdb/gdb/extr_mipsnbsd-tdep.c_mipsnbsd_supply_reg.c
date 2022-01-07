
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CANNOT_FETCH_REGISTER (int) ;
 int PC_REGNUM ;
 int current_gdbarch ;
 int mips_regsize (int ) ;
 int supply_register (int,char*) ;

void
mipsnbsd_supply_reg (char *regs, int regno)
{
  int i;

  for (i = 0; i <= PC_REGNUM; i++)
    {
      if (regno == i || regno == -1)
 {
   if (CANNOT_FETCH_REGISTER (i))
     supply_register (i, ((void*)0));
   else
            supply_register (i, regs + (i * mips_regsize (current_gdbarch)));
        }
    }
}
