
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int reloc_howto_type ;
typedef int bfd_boolean ;


 int BFD_ASSERT (int) ;
 unsigned int R_MIPS16_max ;
 unsigned int R_MIPS16_min ;



 scalar_t__ R_MIPS_max ;
 int * elf_mips16_howto_table_rel ;
 int * elf_mips16_howto_table_rela ;
 int elf_mips_gnu_rel16_s2 ;
 int elf_mips_gnu_rela16_s2 ;
 int elf_mips_gnu_vtentry_howto ;
 int elf_mips_gnu_vtinherit_howto ;
 int * elf_mips_howto_table_rel ;
 int * elf_mips_howto_table_rela ;

__attribute__((used)) static reloc_howto_type *
mips_elf_n32_rtype_to_howto (unsigned int r_type, bfd_boolean rela_p)
{
  switch (r_type)
    {
    case 128:
      return &elf_mips_gnu_vtinherit_howto;
    case 129:
      return &elf_mips_gnu_vtentry_howto;
    case 130:
      if (rela_p)
 return &elf_mips_gnu_rela16_s2;
      else
 return &elf_mips_gnu_rel16_s2;
    default:
      if (r_type >= R_MIPS16_min && r_type < R_MIPS16_max)
 {
   if (rela_p)
     return &elf_mips16_howto_table_rela[r_type - R_MIPS16_min];
   else
     return &elf_mips16_howto_table_rel[r_type - R_MIPS16_min];
 }
      BFD_ASSERT (r_type < (unsigned int) R_MIPS_max);
      if (rela_p)
 return &elf_mips_howto_table_rela[r_type];
      else
 return &elf_mips_howto_table_rel[r_type];
      break;
    }
}
