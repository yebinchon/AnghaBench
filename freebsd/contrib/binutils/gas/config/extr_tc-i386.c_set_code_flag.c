
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CODE_32BIT ;
 int CODE_64BIT ;
 int Cpu386 ;
 int Cpu64 ;
 int CpuNo64 ;
 int CpuSledgehammer ;
 int _ (char*) ;
 int as_bad (int ) ;
 int cpu_arch_flags ;
 int flag_code ;
 char stackop_size ;

__attribute__((used)) static void
set_code_flag (int value)
{
  flag_code = value;
  cpu_arch_flags &= ~(Cpu64 | CpuNo64);
  cpu_arch_flags |= (flag_code == CODE_64BIT ? Cpu64 : CpuNo64);
  if (value == CODE_64BIT && !(cpu_arch_flags & CpuSledgehammer))
    {
      as_bad (_("64bit mode not supported on this CPU."));
    }
  if (value == CODE_32BIT && !(cpu_arch_flags & Cpu386))
    {
      as_bad (_("32bit mode not supported on this CPU."));
    }
  stackop_size = '\0';
}
