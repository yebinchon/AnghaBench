
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int reloc_howto_type ;
typedef int bfd_reloc_code_real_type ;
typedef int bfd ;
struct TYPE_2__ {int bits_per_address; } ;


 int BFD_FAIL () ;

 TYPE_1__* bfd_get_arch_info (int *) ;
 int bfd_howto_32 ;

reloc_howto_type *
bfd_default_reloc_type_lookup (bfd *abfd, bfd_reloc_code_real_type code)
{
  switch (code)
    {
    case 128:


      switch (bfd_get_arch_info (abfd)->bits_per_address)
 {
 case 64:
   BFD_FAIL ();
 case 32:
   return &bfd_howto_32;
 case 16:
   BFD_FAIL ();
 default:
   BFD_FAIL ();
 }
    default:
      BFD_FAIL ();
    }
  return ((void*)0);
}
