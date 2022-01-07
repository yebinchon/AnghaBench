
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfd_hash_table {int dummy; } ;
struct bfd_hash_entry {int dummy; } ;
struct _bfd_sparc_elf_link_hash_entry {int tls_type; int * dyn_relocs; } ;


 int GOT_UNKNOWN ;
 struct bfd_hash_entry* _bfd_elf_link_hash_newfunc (struct bfd_hash_entry*,struct bfd_hash_table*,char const*) ;
 struct bfd_hash_entry* bfd_hash_allocate (struct bfd_hash_table*,int) ;

__attribute__((used)) static struct bfd_hash_entry *
link_hash_newfunc (struct bfd_hash_entry *entry,
     struct bfd_hash_table *table, const char *string)
{


  if (entry == ((void*)0))
    {
      entry = bfd_hash_allocate (table,
     sizeof (struct _bfd_sparc_elf_link_hash_entry));
      if (entry == ((void*)0))
 return entry;
    }


  entry = _bfd_elf_link_hash_newfunc (entry, table, string);
  if (entry != ((void*)0))
    {
      struct _bfd_sparc_elf_link_hash_entry *eh;

      eh = (struct _bfd_sparc_elf_link_hash_entry *) entry;
      eh->dyn_relocs = ((void*)0);
      eh->tls_type = GOT_UNKNOWN;
    }

  return entry;
}
