
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int bfd_boolean ;
typedef int bfd ;
typedef int asection ;
struct TYPE_4__ {int sh_type; int * bfd_section; } ;
typedef TYPE_1__ Elf_Internal_Shdr ;


 int ELF_STRING_ia64_archext ;
 int FALSE ;



 int TRUE ;
 int _bfd_elf_make_section_from_shdr (int *,TYPE_1__*,char const*,int) ;
 int strcmp (char const*,int ) ;

__attribute__((used)) static bfd_boolean
elfNN_ia64_section_from_shdr (bfd *abfd,
         Elf_Internal_Shdr *hdr,
         const char *name,
         int shindex)
{
  asection *newsect;






  switch (hdr->sh_type)
    {
    case 128:
    case 129:
      break;

    case 130:
      if (strcmp (name, ELF_STRING_ia64_archext) != 0)
 return FALSE;
      break;

    default:
      return FALSE;
    }

  if (! _bfd_elf_make_section_from_shdr (abfd, hdr, name, shindex))
    return FALSE;
  newsect = hdr->bfd_section;

  return TRUE;
}
