
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spu_stub_hash_entry {scalar_t__ delta; scalar_t__ off; scalar_t__ target_off; int * target_section; } ;
struct bfd_hash_table {int dummy; } ;
struct bfd_hash_entry {int dummy; } ;


 struct bfd_hash_entry* bfd_hash_allocate (struct bfd_hash_table*,int) ;
 struct bfd_hash_entry* bfd_hash_newfunc (struct bfd_hash_entry*,struct bfd_hash_table*,char const*) ;

__attribute__((used)) static struct bfd_hash_entry *
stub_hash_newfunc (struct bfd_hash_entry *entry,
     struct bfd_hash_table *table,
     const char *string)
{


  if (entry == ((void*)0))
    {
      entry = bfd_hash_allocate (table, sizeof (struct spu_stub_hash_entry));
      if (entry == ((void*)0))
 return entry;
    }


  entry = bfd_hash_newfunc (entry, table, string);
  if (entry != ((void*)0))
    {
      struct spu_stub_hash_entry *sh = (struct spu_stub_hash_entry *) entry;

      sh->target_section = ((void*)0);
      sh->target_off = 0;
      sh->off = 0;
      sh->delta = 0;
    }

  return entry;
}
