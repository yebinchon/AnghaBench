
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppc_link_hash_table {void* relbss; void* dynbss; void* relplt; void* plt; void* got; } ;
struct bfd_link_info {int shared; } ;
typedef int bfd_boolean ;
typedef int bfd ;


 int FALSE ;
 int TRUE ;
 int _bfd_elf_create_dynamic_sections (int *,struct bfd_link_info*) ;
 int abort () ;
 void* bfd_get_section_by_name (int *,char*) ;
 struct ppc_link_hash_table* ppc_hash_table (struct bfd_link_info*) ;

__attribute__((used)) static bfd_boolean
ppc64_elf_create_dynamic_sections (bfd *dynobj, struct bfd_link_info *info)
{
  struct ppc_link_hash_table *htab;

  if (!_bfd_elf_create_dynamic_sections (dynobj, info))
    return FALSE;

  htab = ppc_hash_table (info);
  if (!htab->got)
    htab->got = bfd_get_section_by_name (dynobj, ".got");
  htab->plt = bfd_get_section_by_name (dynobj, ".plt");
  htab->relplt = bfd_get_section_by_name (dynobj, ".rela.plt");
  htab->dynbss = bfd_get_section_by_name (dynobj, ".dynbss");
  if (!info->shared)
    htab->relbss = bfd_get_section_by_name (dynobj, ".rela.bss");

  if (!htab->got || !htab->plt || !htab->relplt || !htab->dynbss
      || (!info->shared && !htab->relbss))
    abort ();

  return TRUE;
}
