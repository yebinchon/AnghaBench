
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int X86_CPU_FXSR ;
 int current_regcache ;
 int i387_supply_fsave (int ,int,char*) ;
 int i387_supply_fxsave (int ,int,char*) ;
 int nto_cpuinfo_flags ;
 scalar_t__ nto_cpuinfo_valid ;

__attribute__((used)) static void
i386nto_supply_fpregset (char *fpregs)
{
  if (nto_cpuinfo_valid && nto_cpuinfo_flags | X86_CPU_FXSR)
    i387_supply_fxsave (current_regcache, -1, fpregs);
  else
    i387_supply_fsave (current_regcache, -1, fpregs);
}
