
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mips_cpu_info {int flags; int isa; int * name; } ;


 int MIPS_CPU_IS_ISA ;
 struct mips_cpu_info const* mips_cpu_info_table ;

__attribute__((used)) static const struct mips_cpu_info *
mips_cpu_info_from_isa (int isa)
{
  int i;

  for (i = 0; mips_cpu_info_table[i].name != ((void*)0); i++)
    if ((mips_cpu_info_table[i].flags & MIPS_CPU_IS_ISA)
 && isa == mips_cpu_info_table[i].isa)
      return (&mips_cpu_info_table[i]);

  return ((void*)0);
}
