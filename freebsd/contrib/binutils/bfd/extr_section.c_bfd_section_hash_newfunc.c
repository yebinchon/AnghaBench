
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct section_hash_entry {int section; } ;
struct bfd_hash_table {int dummy; } ;
struct bfd_hash_entry {int dummy; } ;
typedef int asection ;


 scalar_t__ bfd_hash_allocate (struct bfd_hash_table*,int) ;
 struct bfd_hash_entry* bfd_hash_newfunc (struct bfd_hash_entry*,struct bfd_hash_table*,char const*) ;
 int memset (int *,int ,int) ;

struct bfd_hash_entry *
bfd_section_hash_newfunc (struct bfd_hash_entry *entry,
     struct bfd_hash_table *table,
     const char *string)
{


  if (entry == ((void*)0))
    {
      entry = (struct bfd_hash_entry *)
 bfd_hash_allocate (table, sizeof (struct section_hash_entry));
      if (entry == ((void*)0))
 return entry;
    }


  entry = bfd_hash_newfunc (entry, table, string);
  if (entry != ((void*)0))
    memset (&((struct section_hash_entry *) entry)->section, 0,
     sizeof (asection));

  return entry;
}
