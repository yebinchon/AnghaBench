
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ FPREG_SUPPLIES (int) ;
 int NUM_REGS ;
 int current_regcache ;
 int ia64_fbsd_regcache_collect (int ,int,void*) ;

void
fill_fpregset (void *fpregs, int regno)
{
  if (regno == -1)
    {
      for (regno = 0; regno < NUM_REGS; regno++)
 {
   if (FPREG_SUPPLIES(regno))
     ia64_fbsd_regcache_collect (current_regcache, regno, fpregs);
 }
    }
  else
    {
      if (FPREG_SUPPLIES(regno))
 ia64_fbsd_regcache_collect (current_regcache, regno, fpregs);
    }
}
