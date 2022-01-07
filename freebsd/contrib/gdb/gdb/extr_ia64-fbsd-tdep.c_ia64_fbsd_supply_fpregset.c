
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regset {int dummy; } ;
struct regcache {int dummy; } ;


 scalar_t__ FPREG_SUPPLIES (int) ;
 int NUM_REGS ;
 int ia64_fbsd_regcache_supply (struct regcache*,int,void const*) ;

__attribute__((used)) static void
ia64_fbsd_supply_fpregset (const struct regset *regset,
      struct regcache *regcache, int regno,
      const void *fpregs, size_t len)
{
  if (regno == -1)
    {
      for (regno = 0; regno < NUM_REGS; regno++)
 {
   if (FPREG_SUPPLIES(regno))
     ia64_fbsd_regcache_supply (regcache, regno, fpregs);
 }
    }
  else
    if (FPREG_SUPPLIES(regno))
      ia64_fbsd_regcache_supply (regcache, regno, fpregs);
}
