
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int name; } ;
typedef TYPE_1__ reloc_howto_type ;
typedef int bfd ;


 TYPE_1__* bfd_elf32_bfd_reloc_name_lookup (int *,char const*) ;
 TYPE_1__ mips_vxworks_copy_howto_rela ;
 TYPE_1__ mips_vxworks_jump_slot_howto_rela ;
 scalar_t__ strcasecmp (int ,char const*) ;

__attribute__((used)) static reloc_howto_type *
mips_vxworks_bfd_reloc_name_lookup (bfd *abfd, const char *r_name)
{
  if (strcasecmp (mips_vxworks_copy_howto_rela.name, r_name) == 0)
    return &mips_vxworks_copy_howto_rela;
  if (strcasecmp (mips_vxworks_jump_slot_howto_rela.name, r_name) == 0)
    return &mips_vxworks_jump_slot_howto_rela;

  return bfd_elf32_bfd_reloc_name_lookup (abfd, r_name);
}
