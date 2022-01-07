
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ALPHA_PC_REGNUM ;
 int ALPHA_UNIQUE_REGNUM ;
 int ALPHA_ZERO_REGNUM ;
 int supply_register (int,void const*) ;

void
alpha_supply_int_regs (int regno, const void *r0_r30,
         const void *pc, const void *unique)
{
  int i;

  for (i = 0; i < 31; ++i)
    if (regno == i || regno == -1)
      supply_register (i, (const char *)r0_r30 + i*8);

  if (regno == ALPHA_ZERO_REGNUM || regno == -1)
    supply_register (ALPHA_ZERO_REGNUM, ((void*)0));

  if (regno == ALPHA_PC_REGNUM || regno == -1)
    supply_register (ALPHA_PC_REGNUM, pc);

  if (regno == ALPHA_UNIQUE_REGNUM || regno == -1)
    supply_register (ALPHA_UNIQUE_REGNUM, unique);
}
