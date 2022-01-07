
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elf64_x86_64_link_hash_table {void* srelbss; void* sdynbss; void* srelplt; void* splt; int sgot; } ;
struct bfd_link_info {int shared; } ;
typedef int bfd_boolean ;
typedef int bfd ;


 int FALSE ;
 int TRUE ;
 int _bfd_elf_create_dynamic_sections (int *,struct bfd_link_info*) ;
 int abort () ;
 void* bfd_get_section_by_name (int *,char*) ;
 int create_got_section (int *,struct bfd_link_info*) ;
 struct elf64_x86_64_link_hash_table* elf64_x86_64_hash_table (struct bfd_link_info*) ;

__attribute__((used)) static bfd_boolean
elf64_x86_64_create_dynamic_sections (bfd *dynobj, struct bfd_link_info *info)
{
  struct elf64_x86_64_link_hash_table *htab;

  htab = elf64_x86_64_hash_table (info);
  if (!htab->sgot && !create_got_section (dynobj, info))
    return FALSE;

  if (!_bfd_elf_create_dynamic_sections (dynobj, info))
    return FALSE;

  htab->splt = bfd_get_section_by_name (dynobj, ".plt");
  htab->srelplt = bfd_get_section_by_name (dynobj, ".rela.plt");
  htab->sdynbss = bfd_get_section_by_name (dynobj, ".dynbss");
  if (!info->shared)
    htab->srelbss = bfd_get_section_by_name (dynobj, ".rela.bss");

  if (!htab->splt || !htab->srelplt || !htab->sdynbss
      || (!info->shared && !htab->srelbss))
    abort ();

  return TRUE;
}
