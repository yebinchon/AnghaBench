
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int reloc_howto_type ;
typedef int bfd ;


 int * BFD_SEND (int *,int ,int *) ;
 int reloc_name_lookup ;

reloc_howto_type *
bfd_reloc_name_lookup (bfd *abfd, const char *reloc_name)
{
  return BFD_SEND (abfd, reloc_name_lookup, (abfd, reloc_name));
}
