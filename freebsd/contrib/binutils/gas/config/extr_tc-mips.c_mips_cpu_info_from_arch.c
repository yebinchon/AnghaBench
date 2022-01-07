
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mips_cpu_info {int cpu; int * name; } ;


 struct mips_cpu_info const* mips_cpu_info_table ;

__attribute__((used)) static const struct mips_cpu_info *
mips_cpu_info_from_arch (int arch)
{
  int i;

  for (i = 0; mips_cpu_info_table[i].name != ((void*)0); i++)
    if (arch == mips_cpu_info_table[i].cpu)
      return (&mips_cpu_info_table[i]);

  return ((void*)0);
}
