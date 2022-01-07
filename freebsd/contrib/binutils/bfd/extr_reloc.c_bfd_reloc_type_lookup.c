
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int reloc_howto_type ;
typedef int bfd_reloc_code_real_type ;
typedef int bfd ;


 int * BFD_SEND (int *,int ,int *) ;
 int reloc_type_lookup ;

reloc_howto_type *
bfd_reloc_type_lookup (bfd *abfd, bfd_reloc_code_real_type code)
{
  return BFD_SEND (abfd, reloc_type_lookup, (abfd, code));
}
