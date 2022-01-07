
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_4__ {scalar_t__ sh_type; } ;
typedef TYPE_1__ Elf_Internal_Shdr ;


 int FALSE ;
 scalar_t__ SHT_X86_64_UNWIND ;
 int TRUE ;
 int _bfd_elf_make_section_from_shdr (int *,TYPE_1__*,char const*,int) ;

__attribute__((used)) static bfd_boolean
elf64_x86_64_section_from_shdr (bfd *abfd,
    Elf_Internal_Shdr *hdr,
    const char *name,
    int shindex)
{
  if (hdr->sh_type != SHT_X86_64_UNWIND)
    return FALSE;

  if (! _bfd_elf_make_section_from_shdr (abfd, hdr, name, shindex))
    return FALSE;

  return TRUE;
}
