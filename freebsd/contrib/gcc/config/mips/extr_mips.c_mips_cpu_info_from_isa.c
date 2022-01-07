
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mips_cpu_info {scalar_t__ name; int isa; } ;


 struct mips_cpu_info* mips_cpu_info_table ;

__attribute__((used)) static const struct mips_cpu_info *
mips_cpu_info_from_isa (int isa)
{
  const struct mips_cpu_info *p;

  for (p = mips_cpu_info_table; p->name != 0; p++)
    if (p->isa == isa)
      return p;

  return 0;
}
