
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elf32_arm_link_hash_table {int * srelgot; void* sgotplt; void* sgot; scalar_t__ symbian_p; } ;
struct bfd_link_info {int dummy; } ;
typedef int bfd_boolean ;
typedef int bfd ;


 int FALSE ;
 int RELOC_SECTION (struct elf32_arm_link_hash_table*,char*) ;
 int SEC_ALLOC ;
 int SEC_HAS_CONTENTS ;
 int SEC_IN_MEMORY ;
 int SEC_LINKER_CREATED ;
 int SEC_LOAD ;
 int SEC_READONLY ;
 int TRUE ;
 int _bfd_elf_create_got_section (int *,struct bfd_link_info*) ;
 int abort () ;
 void* bfd_get_section_by_name (int *,char*) ;
 int * bfd_make_section_with_flags (int *,int ,int) ;
 int bfd_set_section_alignment (int *,int *,int) ;
 struct elf32_arm_link_hash_table* elf32_arm_hash_table (struct bfd_link_info*) ;

__attribute__((used)) static bfd_boolean
create_got_section (bfd *dynobj, struct bfd_link_info *info)
{
  struct elf32_arm_link_hash_table *htab;

  htab = elf32_arm_hash_table (info);

  if (htab->symbian_p)
    return TRUE;

  if (! _bfd_elf_create_got_section (dynobj, info))
    return FALSE;

  htab->sgot = bfd_get_section_by_name (dynobj, ".got");
  htab->sgotplt = bfd_get_section_by_name (dynobj, ".got.plt");
  if (!htab->sgot || !htab->sgotplt)
    abort ();

  htab->srelgot = bfd_make_section_with_flags (dynobj,
            RELOC_SECTION (htab, ".got"),
            (SEC_ALLOC | SEC_LOAD
      | SEC_HAS_CONTENTS
      | SEC_IN_MEMORY
      | SEC_LINKER_CREATED
      | SEC_READONLY));
  if (htab->srelgot == ((void*)0)
      || ! bfd_set_section_alignment (dynobj, htab->srelgot, 2))
    return FALSE;
  return TRUE;
}
