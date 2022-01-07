
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppc_elf_link_hash_table {scalar_t__ plt_type; int * plt; void* relplt; int srelplt2; scalar_t__ is_vxworks; int * relsbss; void* relbss; int * dynsbss; void* dynbss; int * glink; int * got; } ;
struct bfd_link_info {int shared; } ;
typedef int flagword ;
typedef int bfd_boolean ;
typedef int bfd ;
typedef int asection ;


 int FALSE ;
 scalar_t__ PLT_VXWORKS ;
 int SEC_ALLOC ;
 int SEC_CODE ;
 int SEC_HAS_CONTENTS ;
 int SEC_IN_MEMORY ;
 int SEC_LINKER_CREATED ;
 int SEC_LOAD ;
 int SEC_READONLY ;
 int _bfd_elf_create_dynamic_sections (int *,struct bfd_link_info*) ;
 int abort () ;
 void* bfd_get_section_by_name (int *,char*) ;
 int * bfd_make_section_anyway_with_flags (int *,char*,int) ;
 int * bfd_make_section_with_flags (int *,char*,int) ;
 int bfd_set_section_alignment (int *,int *,int) ;
 int bfd_set_section_flags (int *,int *,int) ;
 int elf_vxworks_create_dynamic_sections (int *,struct bfd_link_info*,int *) ;
 int ppc_elf_create_got (int *,struct bfd_link_info*) ;
 struct ppc_elf_link_hash_table* ppc_elf_hash_table (struct bfd_link_info*) ;

__attribute__((used)) static bfd_boolean
ppc_elf_create_dynamic_sections (bfd *abfd, struct bfd_link_info *info)
{
  struct ppc_elf_link_hash_table *htab;
  asection *s;
  flagword flags;

  htab = ppc_elf_hash_table (info);

  if (htab->got == ((void*)0)
      && !ppc_elf_create_got (abfd, info))
    return FALSE;

  if (!_bfd_elf_create_dynamic_sections (abfd, info))
    return FALSE;

  flags = (SEC_ALLOC | SEC_LOAD | SEC_READONLY | SEC_HAS_CONTENTS
    | SEC_IN_MEMORY | SEC_LINKER_CREATED);

  s = bfd_make_section_anyway_with_flags (abfd, ".glink", flags | SEC_CODE);
  htab->glink = s;
  if (s == ((void*)0)
      || !bfd_set_section_alignment (abfd, s, 4))
    return FALSE;

  htab->dynbss = bfd_get_section_by_name (abfd, ".dynbss");
  s = bfd_make_section_with_flags (abfd, ".dynsbss",
       SEC_ALLOC | SEC_LINKER_CREATED);
  htab->dynsbss = s;
  if (s == ((void*)0))
    return FALSE;

  if (! info->shared)
    {
      htab->relbss = bfd_get_section_by_name (abfd, ".rela.bss");
      s = bfd_make_section_with_flags (abfd, ".rela.sbss", flags);
      htab->relsbss = s;
      if (s == ((void*)0)
   || ! bfd_set_section_alignment (abfd, s, 2))
 return FALSE;
    }

  if (htab->is_vxworks
      && !elf_vxworks_create_dynamic_sections (abfd, info, &htab->srelplt2))
    return FALSE;

  htab->relplt = bfd_get_section_by_name (abfd, ".rela.plt");
  htab->plt = s = bfd_get_section_by_name (abfd, ".plt");
  if (s == ((void*)0))
    abort ();

  flags = SEC_ALLOC | SEC_CODE | SEC_LINKER_CREATED;
  if (htab->plt_type == PLT_VXWORKS)

    flags |= SEC_HAS_CONTENTS | SEC_LOAD | SEC_READONLY;
  return bfd_set_section_flags (abfd, s, flags);
}
