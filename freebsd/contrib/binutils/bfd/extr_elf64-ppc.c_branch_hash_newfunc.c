
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppc_branch_hash_entry {scalar_t__ iter; scalar_t__ offset; } ;
struct bfd_hash_table {int dummy; } ;
struct bfd_hash_entry {int dummy; } ;


 struct bfd_hash_entry* bfd_hash_allocate (struct bfd_hash_table*,int) ;
 struct bfd_hash_entry* bfd_hash_newfunc (struct bfd_hash_entry*,struct bfd_hash_table*,char const*) ;

__attribute__((used)) static struct bfd_hash_entry *
branch_hash_newfunc (struct bfd_hash_entry *entry,
       struct bfd_hash_table *table,
       const char *string)
{


  if (entry == ((void*)0))
    {
      entry = bfd_hash_allocate (table, sizeof (struct ppc_branch_hash_entry));
      if (entry == ((void*)0))
 return entry;
    }


  entry = bfd_hash_newfunc (entry, table, string);
  if (entry != ((void*)0))
    {
      struct ppc_branch_hash_entry *eh;


      eh = (struct ppc_branch_hash_entry *) entry;
      eh->offset = 0;
      eh->iter = 0;
    }

  return entry;
}
