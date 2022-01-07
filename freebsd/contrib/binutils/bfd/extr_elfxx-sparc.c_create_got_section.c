
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfd_link_info {int dummy; } ;
struct _bfd_sparc_elf_link_hash_table {void* sgotplt; scalar_t__ is_vxworks; int word_align_power; int * srelgot; int * sgot; } ;
typedef int bfd_boolean ;
typedef int bfd ;


 int BFD_ASSERT (int ) ;
 int FALSE ;
 int SEC_ALLOC ;
 int SEC_HAS_CONTENTS ;
 int SEC_IN_MEMORY ;
 int SEC_LINKER_CREATED ;
 int SEC_LOAD ;
 int SEC_READONLY ;
 int TRUE ;
 int _bfd_elf_create_got_section (int *,struct bfd_link_info*) ;
 struct _bfd_sparc_elf_link_hash_table* _bfd_sparc_elf_hash_table (struct bfd_link_info*) ;
 void* bfd_get_section_by_name (int *,char*) ;
 int * bfd_make_section_with_flags (int *,char*,int) ;
 int bfd_set_section_alignment (int *,int *,int ) ;

__attribute__((used)) static bfd_boolean
create_got_section (bfd *dynobj, struct bfd_link_info *info)
{
  struct _bfd_sparc_elf_link_hash_table *htab;

  if (! _bfd_elf_create_got_section (dynobj, info))
    return FALSE;

  htab = _bfd_sparc_elf_hash_table (info);
  htab->sgot = bfd_get_section_by_name (dynobj, ".got");
  BFD_ASSERT (htab->sgot != ((void*)0));

  htab->srelgot = bfd_make_section_with_flags (dynobj, ".rela.got",
            SEC_ALLOC
            | SEC_LOAD
            | SEC_HAS_CONTENTS
            | SEC_IN_MEMORY
            | SEC_LINKER_CREATED
            | SEC_READONLY);
  if (htab->srelgot == ((void*)0)
      || ! bfd_set_section_alignment (dynobj, htab->srelgot,
          htab->word_align_power))
    return FALSE;

  if (htab->is_vxworks)
    {
      htab->sgotplt = bfd_get_section_by_name (dynobj, ".got.plt");
      if (!htab->sgotplt)
 return FALSE;
    }

  return TRUE;
}
