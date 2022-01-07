
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * suffix; } ;
struct sec_merge_hash_entry {int * next; int * secinfo; scalar_t__ alignment; TYPE_1__ u; } ;
struct bfd_hash_table {int dummy; } ;
struct bfd_hash_entry {int dummy; } ;


 struct bfd_hash_entry* bfd_hash_allocate (struct bfd_hash_table*,int) ;
 struct bfd_hash_entry* bfd_hash_newfunc (struct bfd_hash_entry*,struct bfd_hash_table*,char const*) ;

__attribute__((used)) static struct bfd_hash_entry *
sec_merge_hash_newfunc (struct bfd_hash_entry *entry,
   struct bfd_hash_table *table, const char *string)
{


  if (entry == ((void*)0))
    entry = bfd_hash_allocate (table, sizeof (struct sec_merge_hash_entry));
  if (entry == ((void*)0))
    return ((void*)0);


  entry = bfd_hash_newfunc (entry, table, string);

  if (entry != ((void*)0))
    {

      struct sec_merge_hash_entry *ret = (struct sec_merge_hash_entry *) entry;

      ret->u.suffix = ((void*)0);
      ret->alignment = 0;
      ret->secinfo = ((void*)0);
      ret->next = ((void*)0);
    }

  return entry;
}
