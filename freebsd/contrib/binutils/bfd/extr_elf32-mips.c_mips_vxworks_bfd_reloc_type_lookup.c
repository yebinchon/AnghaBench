
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int reloc_howto_type ;
typedef int bfd_reloc_code_real_type ;
typedef int bfd ;




 int * bfd_elf32_bfd_reloc_type_lookup (int *,int) ;
 int mips_vxworks_copy_howto_rela ;
 int mips_vxworks_jump_slot_howto_rela ;

__attribute__((used)) static reloc_howto_type *
mips_vxworks_bfd_reloc_type_lookup (bfd *abfd, bfd_reloc_code_real_type code)
{
  switch (code)
    {
    case 129:
      return &mips_vxworks_copy_howto_rela;
    case 128:
      return &mips_vxworks_jump_slot_howto_rela;
    default:
      return bfd_elf32_bfd_reloc_type_lookup (abfd, code);
    }
}
