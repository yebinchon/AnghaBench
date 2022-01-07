
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint64_t ;
struct regcache {int dummy; } ;


 size_t IA64_BSPSTORE_REGNUM ;
 int IA64_BSP_REGNUM ;
 int NUM_REGS ;
 int* reg_offset ;
 int regcache_raw_supply (struct regcache*,int,char*) ;

__attribute__((used)) static void
ia64_fbsd_regcache_supply (struct regcache *regcache, int regno,
      const void *regs)
{
  int ofs;

  if (regno < 0 || regno >= NUM_REGS)
    return;

  ofs = reg_offset[regno];
  if (regno == IA64_BSP_REGNUM)
    {




      uint64_t bsp;
      bsp = *((uint64_t*)((char *)regs + ofs));
      bsp += *((uint64_t*)((char *)regs + reg_offset[IA64_BSPSTORE_REGNUM]));
      regcache_raw_supply (regcache, regno, &bsp);
    }
  else
    {
      if (ofs < 0)
 regcache_raw_supply (regcache, regno, ((void*)0));
      else
 regcache_raw_supply (regcache, regno, (char *)regs + ofs);
    }
}
