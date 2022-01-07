
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfd_link_info {int executable; } ;
typedef enum elf_ppc64_reloc_type { ____Placeholder_elf_ppc64_reloc_type } elf_ppc64_reloc_type ;
__attribute__((used)) static int
must_be_dyn_reloc (struct bfd_link_info *info,
     enum elf_ppc64_reloc_type r_type)
{
  switch (r_type)
    {
    default:
      return 1;

    case 140:
    case 139:
    case 141:
      return 0;

    case 138:
    case 130:
    case 135:
    case 136:
    case 137:
    case 129:
    case 134:
    case 133:
    case 132:
    case 131:
    case 128:
      return !info->executable;
    }
}
