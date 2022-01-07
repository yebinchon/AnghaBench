
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int bfd_boolean ;
struct TYPE_10__ {TYPE_1__* xvec; } ;
typedef TYPE_2__ bfd ;
typedef int asection ;
struct TYPE_11__ {scalar_t__ sh_type; int sh_info; int sh_entsize; } ;
struct TYPE_12__ {TYPE_3__ this_hdr; } ;
struct TYPE_9__ {scalar_t__ flavour; } ;
typedef TYPE_3__ Elf_Internal_Shdr ;


 scalar_t__ SHT_DYNSYM ;
 scalar_t__ SHT_GNU_verdef ;
 scalar_t__ SHT_GNU_verneed ;
 scalar_t__ SHT_SYMTAB ;
 int TRUE ;
 int _bfd_elf_init_private_section_data (TYPE_2__*,int *,TYPE_2__*,int *,int *) ;
 scalar_t__ bfd_target_elf_flavour ;
 TYPE_4__* elf_section_data (int *) ;

bfd_boolean
_bfd_elf_copy_private_section_data (bfd *ibfd,
        asection *isec,
        bfd *obfd,
        asection *osec)
{
  Elf_Internal_Shdr *ihdr, *ohdr;

  if (ibfd->xvec->flavour != bfd_target_elf_flavour
      || obfd->xvec->flavour != bfd_target_elf_flavour)
    return TRUE;

  ihdr = &elf_section_data (isec)->this_hdr;
  ohdr = &elf_section_data (osec)->this_hdr;

  ohdr->sh_entsize = ihdr->sh_entsize;

  if (ihdr->sh_type == SHT_SYMTAB
      || ihdr->sh_type == SHT_DYNSYM
      || ihdr->sh_type == SHT_GNU_verneed
      || ihdr->sh_type == SHT_GNU_verdef)
    ohdr->sh_info = ihdr->sh_info;

  return _bfd_elf_init_private_section_data (ibfd, isec, obfd, osec,
          ((void*)0));
}
