
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elf32_arm_link_hash_table {int plt_header_size; int plt_entry_size; void* srelbss; void* sdynbss; void* srelplt; void* splt; int srelplt2; scalar_t__ vxworks_p; int sgot; } ;
struct bfd_link_info {scalar_t__ shared; } ;
typedef int bfd_boolean ;
typedef int bfd ;


 int ARRAY_SIZE (int ) ;
 int FALSE ;
 char* RELOC_SECTION (struct elf32_arm_link_hash_table*,char*) ;
 int TRUE ;
 int _bfd_elf_create_dynamic_sections (int *,struct bfd_link_info*) ;
 int abort () ;
 void* bfd_get_section_by_name (int *,char*) ;
 int create_got_section (int *,struct bfd_link_info*) ;
 struct elf32_arm_link_hash_table* elf32_arm_hash_table (struct bfd_link_info*) ;
 int elf32_arm_vxworks_exec_plt0_entry ;
 int elf32_arm_vxworks_exec_plt_entry ;
 int elf32_arm_vxworks_shared_plt_entry ;
 int elf_vxworks_create_dynamic_sections (int *,struct bfd_link_info*,int *) ;

__attribute__((used)) static bfd_boolean
elf32_arm_create_dynamic_sections (bfd *dynobj, struct bfd_link_info *info)
{
  struct elf32_arm_link_hash_table *htab;

  htab = elf32_arm_hash_table (info);
  if (!htab->sgot && !create_got_section (dynobj, info))
    return FALSE;

  if (!_bfd_elf_create_dynamic_sections (dynobj, info))
    return FALSE;

  htab->splt = bfd_get_section_by_name (dynobj, ".plt");
  htab->srelplt = bfd_get_section_by_name (dynobj,
        RELOC_SECTION (htab, ".plt"));
  htab->sdynbss = bfd_get_section_by_name (dynobj, ".dynbss");
  if (!info->shared)
    htab->srelbss = bfd_get_section_by_name (dynobj,
          RELOC_SECTION (htab, ".bss"));

  if (htab->vxworks_p)
    {
      if (!elf_vxworks_create_dynamic_sections (dynobj, info, &htab->srelplt2))
 return FALSE;

      if (info->shared)
 {
   htab->plt_header_size = 0;
   htab->plt_entry_size
     = 4 * ARRAY_SIZE (elf32_arm_vxworks_shared_plt_entry);
 }
      else
 {
   htab->plt_header_size
     = 4 * ARRAY_SIZE (elf32_arm_vxworks_exec_plt0_entry);
   htab->plt_entry_size
     = 4 * ARRAY_SIZE (elf32_arm_vxworks_exec_plt_entry);
 }
    }

  if (!htab->splt
      || !htab->srelplt
      || !htab->sdynbss
      || (!info->shared && !htab->srelbss))
    abort ();

  return TRUE;
}
