
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int FP0_REGNUM ;
 int nto_reg_offset (unsigned int) ;
 int supply_register (unsigned int,char*) ;

__attribute__((used)) static void
i386nto_supply_gregset (char *gpregs)
{
  unsigned regno;
  int empty = 0;

  for (regno = 0; regno < FP0_REGNUM; regno++)
    {
      int offset = nto_reg_offset (regno);
      if (offset == -1)
 supply_register (regno, (char *) &empty);
      else
 supply_register (regno, gpregs + offset);
    }
}
