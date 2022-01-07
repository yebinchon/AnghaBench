
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NTO_REG_FLOAT ;
 int NTO_REG_GENERAL ;
 int NUM_GPREGS ;
 int X86_CPU_FXSR ;
 int i387_fill_fsave (char*,int) ;
 int i387_fill_fxsave (char*,int) ;
 int nto_cpuinfo_flags ;
 scalar_t__ nto_cpuinfo_valid ;
 int nto_reg_offset (int) ;
 int regcache_collect (int,char*) ;

__attribute__((used)) static int
i386nto_regset_fill (int regset, char *data)
{
  if (regset == NTO_REG_GENERAL)
    {
      int regno;

      for (regno = 0; regno < NUM_GPREGS; regno++)
 {
   int offset = nto_reg_offset (regno);
   if (offset != -1)
     regcache_collect (regno, data + offset);
 }
    }
  else if (regset == NTO_REG_FLOAT)
    {
      if (nto_cpuinfo_valid && nto_cpuinfo_flags | X86_CPU_FXSR)
 i387_fill_fxsave (data, -1);
      else
 i387_fill_fsave (data, -1);
    }
  else
    return -1;

  return 0;
}
