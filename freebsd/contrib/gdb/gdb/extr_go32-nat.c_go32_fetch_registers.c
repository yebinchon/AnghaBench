
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FP0_REGNUM ;
 int current_regcache ;
 int fetch_register (int) ;
 int i387_supply_fsave (int ,int,int *) ;
 int npx ;

__attribute__((used)) static void
go32_fetch_registers (int regno)
{
  if (regno >= 0)
    fetch_register (regno);
  else
    {
      for (regno = 0; regno < FP0_REGNUM; regno++)
 fetch_register (regno);
      i387_supply_fsave (current_regcache, -1, &npx);
    }
}
