
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppc_elf_link_hash_table {int relgot; void* sgotplt; scalar_t__ is_vxworks; int * got; } ;
struct bfd_link_info {int dummy; } ;
typedef int flagword ;
typedef int bfd_boolean ;
typedef int bfd ;
typedef int asection ;


 int FALSE ;
 int SEC_ALLOC ;
 int SEC_CODE ;
 int SEC_HAS_CONTENTS ;
 int SEC_IN_MEMORY ;
 int SEC_LINKER_CREATED ;
 int SEC_LOAD ;
 int SEC_READONLY ;
 int TRUE ;
 int _bfd_elf_create_got_section (int *,struct bfd_link_info*) ;
 int abort () ;
 void* bfd_get_section_by_name (int *,char*) ;
 int bfd_make_section_with_flags (int *,char*,int) ;
 int bfd_set_section_alignment (int *,int ,int) ;
 int bfd_set_section_flags (int *,int *,int) ;
 struct ppc_elf_link_hash_table* ppc_elf_hash_table (struct bfd_link_info*) ;

__attribute__((used)) static bfd_boolean
ppc_elf_create_got (bfd *abfd, struct bfd_link_info *info)
{
  struct ppc_elf_link_hash_table *htab;
  asection *s;
  flagword flags;

  if (!_bfd_elf_create_got_section (abfd, info))
    return FALSE;

  htab = ppc_elf_hash_table (info);
  htab->got = s = bfd_get_section_by_name (abfd, ".got");
  if (s == ((void*)0))
    abort ();

  if (htab->is_vxworks)
    {
      htab->sgotplt = bfd_get_section_by_name (abfd, ".got.plt");
      if (!htab->sgotplt)
 abort ();
    }
  else
    {


      flags = (SEC_ALLOC | SEC_LOAD | SEC_CODE | SEC_HAS_CONTENTS
        | SEC_IN_MEMORY | SEC_LINKER_CREATED);
      if (!bfd_set_section_flags (abfd, s, flags))
 return FALSE;
    }

  flags = (SEC_ALLOC | SEC_LOAD | SEC_HAS_CONTENTS | SEC_IN_MEMORY
    | SEC_LINKER_CREATED | SEC_READONLY);
  htab->relgot = bfd_make_section_with_flags (abfd, ".rela.got", flags);
  if (!htab->relgot
      || ! bfd_set_section_alignment (abfd, htab->relgot, 2))
    return FALSE;

  return TRUE;
}
