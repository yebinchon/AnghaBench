
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * dynobj; } ;
struct ppc_elf_link_hash_table {TYPE_1__ elf; } ;
struct bfd_link_info {int dummy; } ;
typedef int flagword ;
struct TYPE_6__ {int * section; int name; } ;
typedef TYPE_2__ elf_linker_section_t ;
typedef int bfd_boolean ;
typedef int bfd ;
typedef int asection ;


 int FALSE ;
 int SEC_ALLOC ;
 int SEC_HAS_CONTENTS ;
 int SEC_IN_MEMORY ;
 int SEC_LINKER_CREATED ;
 int SEC_LOAD ;
 int * bfd_make_section_anyway_with_flags (int *,int ,int) ;
 int bfd_set_section_alignment (int *,int *,int) ;
 int create_sdata_sym (struct ppc_elf_link_hash_table*,TYPE_2__*) ;
 struct ppc_elf_link_hash_table* ppc_elf_hash_table (struct bfd_link_info*) ;

__attribute__((used)) static bfd_boolean
ppc_elf_create_linker_section (bfd *abfd,
          struct bfd_link_info *info,
          flagword flags,
          elf_linker_section_t *lsect)
{
  struct ppc_elf_link_hash_table *htab = ppc_elf_hash_table (info);
  asection *s;

  flags |= (SEC_ALLOC | SEC_LOAD | SEC_HAS_CONTENTS | SEC_IN_MEMORY
     | SEC_LINKER_CREATED);


  if (!htab->elf.dynobj)
    htab->elf.dynobj = abfd;

  s = bfd_make_section_anyway_with_flags (htab->elf.dynobj,
       lsect->name,
       flags);
  if (s == ((void*)0)
      || !bfd_set_section_alignment (htab->elf.dynobj, s, 2))
    return FALSE;
  lsect->section = s;

  return create_sdata_sym (htab, lsect);
}
