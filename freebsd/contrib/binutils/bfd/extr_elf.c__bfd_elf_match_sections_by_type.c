
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int bfd_boolean ;
struct TYPE_6__ {TYPE_1__* xvec; } ;
typedef TYPE_2__ bfd ;
typedef int asection ;
struct TYPE_5__ {scalar_t__ flavour; } ;


 int TRUE ;
 scalar_t__ bfd_target_elf_flavour ;
 scalar_t__ elf_section_type (int const*) ;

bfd_boolean
_bfd_elf_match_sections_by_type (bfd *abfd, const asection *asec,
     bfd *bbfd, const asection *bsec)
{
  if (asec == ((void*)0)
      || bsec == ((void*)0)
      || abfd->xvec->flavour != bfd_target_elf_flavour
      || bbfd->xvec->flavour != bfd_target_elf_flavour)
    return TRUE;

  return elf_section_type (asec) == elf_section_type (bsec);
}
