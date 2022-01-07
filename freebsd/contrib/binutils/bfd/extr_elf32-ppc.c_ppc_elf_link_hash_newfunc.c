
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ppc_elf_link_hash_entry {int dummy; } ;
struct bfd_hash_table {int dummy; } ;
struct bfd_hash_entry {int dummy; } ;
struct TYPE_2__ {scalar_t__ tls_mask; int * dyn_relocs; int * linker_section_pointer; } ;


 struct bfd_hash_entry* _bfd_elf_link_hash_newfunc (struct bfd_hash_entry*,struct bfd_hash_table*,char const*) ;
 struct bfd_hash_entry* bfd_hash_allocate (struct bfd_hash_table*,int) ;
 TYPE_1__* ppc_elf_hash_entry (struct bfd_hash_entry*) ;

__attribute__((used)) static struct bfd_hash_entry *
ppc_elf_link_hash_newfunc (struct bfd_hash_entry *entry,
      struct bfd_hash_table *table,
      const char *string)
{


  if (entry == ((void*)0))
    {
      entry = bfd_hash_allocate (table,
     sizeof (struct ppc_elf_link_hash_entry));
      if (entry == ((void*)0))
 return entry;
    }


  entry = _bfd_elf_link_hash_newfunc (entry, table, string);
  if (entry != ((void*)0))
    {
      ppc_elf_hash_entry (entry)->linker_section_pointer = ((void*)0);
      ppc_elf_hash_entry (entry)->dyn_relocs = ((void*)0);
      ppc_elf_hash_entry (entry)->tls_mask = 0;
    }

  return entry;
}
