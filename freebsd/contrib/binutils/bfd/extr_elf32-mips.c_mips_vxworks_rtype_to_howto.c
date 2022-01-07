
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int reloc_howto_type ;
typedef int bfd_boolean ;




 int * mips_elf32_rtype_to_howto (unsigned int,int ) ;
 int mips_vxworks_copy_howto_rela ;
 int mips_vxworks_jump_slot_howto_rela ;

__attribute__((used)) static reloc_howto_type *
mips_vxworks_rtype_to_howto (unsigned int r_type, bfd_boolean rela_p)
{
  switch (r_type)
    {
    case 129:
      return &mips_vxworks_copy_howto_rela;
    case 128:
      return &mips_vxworks_jump_slot_howto_rela;
    default:
      return mips_elf32_rtype_to_howto (r_type, rela_p);
    }
}
