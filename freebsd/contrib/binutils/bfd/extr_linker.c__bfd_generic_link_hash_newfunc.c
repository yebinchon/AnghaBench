
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct generic_link_hash_entry {int * sym; int written; } ;
struct bfd_hash_table {int dummy; } ;
struct bfd_hash_entry {int dummy; } ;


 int FALSE ;
 struct bfd_hash_entry* _bfd_link_hash_newfunc (struct bfd_hash_entry*,struct bfd_hash_table*,char const*) ;
 struct bfd_hash_entry* bfd_hash_allocate (struct bfd_hash_table*,int) ;

struct bfd_hash_entry *
_bfd_generic_link_hash_newfunc (struct bfd_hash_entry *entry,
    struct bfd_hash_table *table,
    const char *string)
{


  if (entry == ((void*)0))
    {
      entry =
 bfd_hash_allocate (table, sizeof (struct generic_link_hash_entry));
      if (entry == ((void*)0))
 return entry;
    }


  entry = _bfd_link_hash_newfunc (entry, table, string);
  if (entry)
    {
      struct generic_link_hash_entry *ret;


      ret = (struct generic_link_hash_entry *) entry;
      ret->written = FALSE;
      ret->sym = ((void*)0);
    }

  return entry;
}
