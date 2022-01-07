
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CODE_64BIT ;
 int Cpu64 ;
 int CpuNo64 ;
 int LONG_MNEM_SUFFIX ;
 int cpu_arch_flags ;
 int flag_code ;
 int stackop_size ;

__attribute__((used)) static void
set_16bit_gcc_code_flag (int new_code_flag)
{
  flag_code = new_code_flag;
  cpu_arch_flags &= ~(Cpu64 | CpuNo64);
  cpu_arch_flags |= (flag_code == CODE_64BIT ? Cpu64 : CpuNo64);
  stackop_size = LONG_MNEM_SUFFIX;
}
