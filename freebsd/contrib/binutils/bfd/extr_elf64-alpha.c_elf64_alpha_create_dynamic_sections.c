
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct elf_link_hash_entry {int dummy; } ;
struct bfd_link_info {int dummy; } ;
typedef int flagword ;
typedef int bfd_boolean ;
typedef int bfd ;
typedef int asection ;
struct TYPE_4__ {int * got; int * gotobj; } ;
struct TYPE_3__ {struct elf_link_hash_entry* hgot; struct elf_link_hash_entry* hplt; } ;


 int FALSE ;
 int SEC_ALLOC ;
 int SEC_CODE ;
 int SEC_HAS_CONTENTS ;
 int SEC_IN_MEMORY ;
 int SEC_LINKER_CREATED ;
 int SEC_LOAD ;
 int SEC_READONLY ;
 int TRUE ;
 struct elf_link_hash_entry* _bfd_elf_define_linkage_sym (int *,struct bfd_link_info*,int *,char*) ;
 TYPE_2__* alpha_elf_tdata (int *) ;
 int * bfd_make_section_anyway_with_flags (int *,char*,int) ;
 int bfd_set_section_alignment (int *,int *,int) ;
 int elf64_alpha_create_got_section (int *,struct bfd_link_info*) ;
 scalar_t__ elf64_alpha_use_secureplt ;
 TYPE_1__* elf_hash_table (struct bfd_link_info*) ;

__attribute__((used)) static bfd_boolean
elf64_alpha_create_dynamic_sections (bfd *abfd, struct bfd_link_info *info)
{
  asection *s;
  flagword flags;
  struct elf_link_hash_entry *h;



  flags = (SEC_ALLOC | SEC_LOAD | SEC_CODE | SEC_HAS_CONTENTS | SEC_IN_MEMORY
    | SEC_LINKER_CREATED
    | (elf64_alpha_use_secureplt ? SEC_READONLY : 0));
  s = bfd_make_section_anyway_with_flags (abfd, ".plt", flags);
  if (s == ((void*)0) || ! bfd_set_section_alignment (abfd, s, 4))
    return FALSE;



  h = _bfd_elf_define_linkage_sym (abfd, info, s,
       "_PROCEDURE_LINKAGE_TABLE_");
  elf_hash_table (info)->hplt = h;
  if (h == ((void*)0))
    return FALSE;

  flags = (SEC_ALLOC | SEC_LOAD | SEC_HAS_CONTENTS | SEC_IN_MEMORY
    | SEC_LINKER_CREATED | SEC_READONLY);
  s = bfd_make_section_anyway_with_flags (abfd, ".rela.plt", flags);
  if (s == ((void*)0) || ! bfd_set_section_alignment (abfd, s, 3))
    return FALSE;

  if (elf64_alpha_use_secureplt)
    {
      flags = SEC_ALLOC | SEC_LINKER_CREATED;
      s = bfd_make_section_anyway_with_flags (abfd, ".got.plt", flags);
      if (s == ((void*)0) || ! bfd_set_section_alignment (abfd, s, 3))
 return FALSE;
    }




  if (alpha_elf_tdata(abfd)->gotobj == ((void*)0))
    {
      if (!elf64_alpha_create_got_section (abfd, info))
 return FALSE;
    }

  flags = (SEC_ALLOC | SEC_LOAD | SEC_HAS_CONTENTS | SEC_IN_MEMORY
    | SEC_LINKER_CREATED | SEC_READONLY);
  s = bfd_make_section_anyway_with_flags (abfd, ".rela.got", flags);
  if (s == ((void*)0)
      || !bfd_set_section_alignment (abfd, s, 3))
    return FALSE;





  h = _bfd_elf_define_linkage_sym (abfd, info, alpha_elf_tdata(abfd)->got,
       "_GLOBAL_OFFSET_TABLE_");
  elf_hash_table (info)->hgot = h;
  if (h == ((void*)0))
    return FALSE;

  return TRUE;
}
