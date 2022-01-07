
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppc_link_hash_table {int * relbrlt; int * brlt; int * glink; int * sfpr; } ;
struct bfd_link_info {int shared; } ;
typedef int flagword ;
typedef int bfd_boolean ;
typedef int bfd ;


 int FALSE ;
 int SEC_ALLOC ;
 int SEC_CODE ;
 int SEC_HAS_CONTENTS ;
 int SEC_IN_MEMORY ;
 int SEC_LINKER_CREATED ;
 int SEC_LOAD ;
 int SEC_READONLY ;
 int TRUE ;
 void* bfd_make_section_anyway_with_flags (int *,char*,int) ;
 int bfd_set_section_alignment (int *,int *,int) ;
 struct ppc_link_hash_table* ppc_hash_table (struct bfd_link_info*) ;

__attribute__((used)) static bfd_boolean
create_linkage_sections (bfd *dynobj, struct bfd_link_info *info)
{
  struct ppc_link_hash_table *htab;
  flagword flags;

  htab = ppc_hash_table (info);


  flags = (SEC_ALLOC | SEC_LOAD | SEC_CODE | SEC_READONLY
    | SEC_HAS_CONTENTS | SEC_IN_MEMORY | SEC_LINKER_CREATED);
  htab->sfpr = bfd_make_section_anyway_with_flags (dynobj, ".sfpr",
         flags);
  if (htab->sfpr == ((void*)0)
      || ! bfd_set_section_alignment (dynobj, htab->sfpr, 2))
    return FALSE;


  htab->glink = bfd_make_section_anyway_with_flags (dynobj, ".glink",
          flags);
  if (htab->glink == ((void*)0)
      || ! bfd_set_section_alignment (dynobj, htab->glink, 3))
    return FALSE;


  flags = (SEC_ALLOC | SEC_LOAD
    | SEC_HAS_CONTENTS | SEC_IN_MEMORY | SEC_LINKER_CREATED);
  htab->brlt = bfd_make_section_anyway_with_flags (dynobj, ".branch_lt",
         flags);
  if (htab->brlt == ((void*)0)
      || ! bfd_set_section_alignment (dynobj, htab->brlt, 3))
    return FALSE;

  if (!info->shared)
    return TRUE;

  flags = (SEC_ALLOC | SEC_LOAD | SEC_READONLY
    | SEC_HAS_CONTENTS | SEC_IN_MEMORY | SEC_LINKER_CREATED);
  htab->relbrlt = bfd_make_section_anyway_with_flags (dynobj,
            ".rela.branch_lt",
            flags);
  if (!htab->relbrlt
      || ! bfd_set_section_alignment (dynobj, htab->relbrlt, 3))
    return FALSE;

  return TRUE;
}
