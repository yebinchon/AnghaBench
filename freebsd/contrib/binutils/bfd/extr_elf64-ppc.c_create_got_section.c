
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dynobj; } ;
struct ppc_link_hash_table {scalar_t__ got; TYPE_1__ elf; } ;
struct bfd_link_info {int dummy; } ;
typedef int flagword ;
typedef int bfd_boolean ;
typedef int bfd ;
typedef int asection ;
struct TYPE_4__ {int * relgot; int * got; } ;


 int FALSE ;
 int SEC_ALLOC ;
 int SEC_HAS_CONTENTS ;
 int SEC_IN_MEMORY ;
 int SEC_LINKER_CREATED ;
 int SEC_LOAD ;
 int SEC_READONLY ;
 int TRUE ;
 int _bfd_elf_create_got_section (int ,struct bfd_link_info*) ;
 int abort () ;
 scalar_t__ bfd_get_section_by_name (int ,char*) ;
 int * bfd_make_section_anyway_with_flags (int *,char*,int) ;
 int bfd_set_section_alignment (int *,int *,int) ;
 TYPE_2__* ppc64_elf_tdata (int *) ;
 struct ppc_link_hash_table* ppc_hash_table (struct bfd_link_info*) ;

__attribute__((used)) static bfd_boolean
create_got_section (bfd *abfd, struct bfd_link_info *info)
{
  asection *got, *relgot;
  flagword flags;
  struct ppc_link_hash_table *htab = ppc_hash_table (info);

  if (!htab->got)
    {
      if (! _bfd_elf_create_got_section (htab->elf.dynobj, info))
 return FALSE;

      htab->got = bfd_get_section_by_name (htab->elf.dynobj, ".got");
      if (!htab->got)
 abort ();
    }

  flags = (SEC_ALLOC | SEC_LOAD | SEC_HAS_CONTENTS | SEC_IN_MEMORY
    | SEC_LINKER_CREATED);

  got = bfd_make_section_anyway_with_flags (abfd, ".got", flags);
  if (!got
      || !bfd_set_section_alignment (abfd, got, 3))
    return FALSE;

  relgot = bfd_make_section_anyway_with_flags (abfd, ".rela.got",
            flags | SEC_READONLY);
  if (!relgot
      || ! bfd_set_section_alignment (abfd, relgot, 3))
    return FALSE;

  ppc64_elf_tdata (abfd)->got = got;
  ppc64_elf_tdata (abfd)->relgot = relgot;
  return TRUE;
}
