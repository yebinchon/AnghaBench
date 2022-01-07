
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FIRST_PSEUDO_REGISTER ;
 scalar_t__ TARGET_MIPS16 ;
 int* reg_alloc_order ;

void
mips_order_regs_for_local_alloc (void)
{
  register int i;

  for (i = 0; i < FIRST_PSEUDO_REGISTER; i++)
    reg_alloc_order[i] = i;

  if (TARGET_MIPS16)
    {


      reg_alloc_order[0] = 24;
      reg_alloc_order[24] = 0;
    }
}
