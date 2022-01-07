
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ GREG_SUPPLIES (int) ;
 int NUM_REGS ;
 int current_regcache ;
 int ia64_fbsd_regcache_collect (int ,int,void*) ;

void
fill_gregset (void *gregs, int regno)
{
  if (regno == -1)
    {
      for (regno = 0; regno < NUM_REGS; regno++)
 {
   if (GREG_SUPPLIES(regno))
     ia64_fbsd_regcache_collect (current_regcache, regno, gregs);
 }
    }
  else
    {
      if (GREG_SUPPLIES(regno))
 ia64_fbsd_regcache_collect (current_regcache, regno, gregs);
    }
}
