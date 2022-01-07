
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfd_link_info {scalar_t__ shared; } ;
 int R_386_TLS_LE_32 ;

__attribute__((used)) static int
elf_i386_tls_transition (struct bfd_link_info *info, int r_type, int is_local)
{
  if (info->shared)
    return r_type;

  switch (r_type)
    {
    case 133:
    case 132:
    case 134:
    case 129:
      if (is_local)
 return R_386_TLS_LE_32;
      return 129;
    case 130:
    case 131:
      if (is_local)
 return R_386_TLS_LE_32;
      return r_type;
    case 128:
      return R_386_TLS_LE_32;
    }

  return r_type;
}
