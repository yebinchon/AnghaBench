
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfd_link_info {scalar_t__ shared; } ;







 int R_X86_64_TPOFF32 ;

__attribute__((used)) static int
elf64_x86_64_tls_transition (struct bfd_link_info *info, int r_type, int is_local)
{
  if (info->shared)
    return r_type;

  switch (r_type)
    {
    case 129:
    case 132:
    case 130:
    case 131:
      if (is_local)
 return R_X86_64_TPOFF32;
      return 131;
    case 128:
      return R_X86_64_TPOFF32;
    }

   return r_type;
}
