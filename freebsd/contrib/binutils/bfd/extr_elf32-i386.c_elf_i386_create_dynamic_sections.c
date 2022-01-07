
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elf_i386_link_hash_table {int srelplt2; scalar_t__ is_vxworks; void* srelbss; void* sdynbss; void* srelplt; void* splt; int sgot; } ;
struct bfd_link_info {int shared; } ;
typedef int bfd_boolean ;
typedef int bfd ;


 int FALSE ;
 int TRUE ;
 int _bfd_elf_create_dynamic_sections (int *,struct bfd_link_info*) ;
 int abort () ;
 void* bfd_get_section_by_name (int *,char*) ;
 int create_got_section (int *,struct bfd_link_info*) ;
 struct elf_i386_link_hash_table* elf_i386_hash_table (struct bfd_link_info*) ;
 int elf_vxworks_create_dynamic_sections (int *,struct bfd_link_info*,int *) ;

__attribute__((used)) static bfd_boolean
elf_i386_create_dynamic_sections (bfd *dynobj, struct bfd_link_info *info)
{
  struct elf_i386_link_hash_table *htab;

  htab = elf_i386_hash_table (info);
  if (!htab->sgot && !create_got_section (dynobj, info))
    return FALSE;

  if (!_bfd_elf_create_dynamic_sections (dynobj, info))
    return FALSE;

  htab->splt = bfd_get_section_by_name (dynobj, ".plt");
  htab->srelplt = bfd_get_section_by_name (dynobj, ".rel.plt");
  htab->sdynbss = bfd_get_section_by_name (dynobj, ".dynbss");
  if (!info->shared)
    htab->srelbss = bfd_get_section_by_name (dynobj, ".rel.bss");

  if (!htab->splt || !htab->srelplt || !htab->sdynbss
      || (!info->shared && !htab->srelbss))
    abort ();

  if (htab->is_vxworks
      && !elf_vxworks_create_dynamic_sections (dynobj, info, &htab->srelplt2))
    return FALSE;

  return TRUE;
}
