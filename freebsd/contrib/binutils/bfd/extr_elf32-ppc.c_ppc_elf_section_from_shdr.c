
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int flagword ;
typedef int bfd_boolean ;
typedef int bfd ;
typedef int asection ;
struct TYPE_4__ {int sh_flags; scalar_t__ sh_type; int * bfd_section; } ;
typedef TYPE_1__ Elf_Internal_Shdr ;


 int FALSE ;
 int SEC_EXCLUDE ;
 int SEC_SORT_ENTRIES ;
 int SHF_EXCLUDE ;
 scalar_t__ SHT_ORDERED ;
 int TRUE ;
 int _bfd_elf_make_section_from_shdr (int *,TYPE_1__*,char const*,int) ;
 int bfd_get_section_flags (int *,int *) ;
 int bfd_set_section_flags (int *,int *,int ) ;

__attribute__((used)) static bfd_boolean
ppc_elf_section_from_shdr (bfd *abfd,
      Elf_Internal_Shdr *hdr,
      const char *name,
      int shindex)
{
  asection *newsect;
  flagword flags;

  if (! _bfd_elf_make_section_from_shdr (abfd, hdr, name, shindex))
    return FALSE;

  newsect = hdr->bfd_section;
  flags = bfd_get_section_flags (abfd, newsect);
  if (hdr->sh_flags & SHF_EXCLUDE)
    flags |= SEC_EXCLUDE;

  if (hdr->sh_type == SHT_ORDERED)
    flags |= SEC_SORT_ENTRIES;

  bfd_set_section_flags (abfd, newsect, flags);
  return TRUE;
}
