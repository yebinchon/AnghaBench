
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int reloc_howto_type ;




 unsigned int R_SPARC_NONE ;

 scalar_t__ R_SPARC_max_std ;
 int _ (char*) ;
 int _bfd_error_handler (int ,int) ;
 int * _bfd_sparc_elf_howto_table ;
 int sparc_rev32_howto ;
 int sparc_vtentry_howto ;
 int sparc_vtinherit_howto ;
 int stub1 (int ,int) ;

reloc_howto_type *
_bfd_sparc_elf_info_to_howto_ptr (unsigned int r_type)
{
  switch (r_type)
    {
    case 129:
      return &sparc_vtinherit_howto;

    case 130:
      return &sparc_vtentry_howto;

    case 128:
      return &sparc_rev32_howto;

    default:
      if (r_type >= (unsigned int) R_SPARC_max_std)
 {
   (*_bfd_error_handler) (_("invalid relocation type %d"),
     (int) r_type);
   r_type = R_SPARC_NONE;
 }
      return &_bfd_sparc_elf_howto_table[r_type];
    }
}
