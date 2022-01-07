
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mips_cpu_info {scalar_t__ name; } ;


 scalar_t__ ABI_NEEDS_32BIT_REGS (int ) ;
 scalar_t__ ABI_NEEDS_64BIT_REGS (int ) ;
 int ISA_MIPS1 ;
 int ISA_MIPS3 ;
 scalar_t__ MIPS_DEFAULT_64BIT ;
 int as_bad (char*,char const*,char const*) ;
 scalar_t__ file_mips_gp32 ;
 int mips_abi ;
 struct mips_cpu_info const* mips_cpu_info_from_isa (int ) ;
 struct mips_cpu_info* mips_cpu_info_table ;
 scalar_t__ mips_matching_cpu_name_p (scalar_t__,char const*) ;
 scalar_t__ strcasecmp (char const*,char*) ;

__attribute__((used)) static const struct mips_cpu_info *
mips_parse_cpu (const char *option, const char *cpu_string)
{
  const struct mips_cpu_info *p;
  if (strcasecmp (cpu_string, "from-abi") == 0)
    {
      if (ABI_NEEDS_32BIT_REGS (mips_abi))
 return mips_cpu_info_from_isa (ISA_MIPS1);

      if (ABI_NEEDS_64BIT_REGS (mips_abi))
 return mips_cpu_info_from_isa (ISA_MIPS3);

      if (file_mips_gp32 >= 0)
 return mips_cpu_info_from_isa (file_mips_gp32 ? ISA_MIPS1 : ISA_MIPS3);

      return mips_cpu_info_from_isa (MIPS_DEFAULT_64BIT
         ? ISA_MIPS3
         : ISA_MIPS1);
    }


  if (strcasecmp (cpu_string, "default") == 0)
    return 0;

  for (p = mips_cpu_info_table; p->name != 0; p++)
    if (mips_matching_cpu_name_p (p->name, cpu_string))
      return p;

  as_bad ("Bad value (%s) for %s", cpu_string, option);
  return 0;
}
