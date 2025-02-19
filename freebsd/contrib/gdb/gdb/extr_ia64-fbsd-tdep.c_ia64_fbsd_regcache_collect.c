
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint64_t ;
struct regcache {int dummy; } ;


 int IA64_BSPSTORE_REGNUM ;
 int IA64_BSP_REGNUM ;
 int NUM_REGS ;
 int* reg_offset ;
 int regcache_raw_collect (struct regcache*,int,char*) ;

__attribute__((used)) static void
ia64_fbsd_regcache_collect (struct regcache *regcache, int regno,
       void *regs)
{
  int ofs;

  if (regno < 0 || regno >= NUM_REGS)
    return;

  ofs = reg_offset[regno];
  if (regno == IA64_BSP_REGNUM)
    {
      uint64_t bsp, bspstore;
      regcache_raw_collect (regcache, regno, &bsp);
      regcache_raw_collect (regcache, IA64_BSPSTORE_REGNUM, &bspstore);
      *(uint64_t *)((char *)regs + ofs) = bsp - bspstore;
    }
  else
    {
      if (ofs >= 0)
 regcache_raw_collect (regcache, regno, (char*)regs + ofs);
    }
}
