
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coff_debug_merge_hash_entry {int * types; } ;
struct bfd_hash_table {int dummy; } ;
struct bfd_hash_entry {int dummy; } ;


 scalar_t__ bfd_hash_allocate (struct bfd_hash_table*,int) ;
 scalar_t__ bfd_hash_newfunc (struct bfd_hash_entry*,struct bfd_hash_table*,char const*) ;

struct bfd_hash_entry *
_bfd_coff_debug_merge_hash_newfunc (struct bfd_hash_entry *entry,
        struct bfd_hash_table *table,
        const char *string)
{
  struct coff_debug_merge_hash_entry *ret =
    (struct coff_debug_merge_hash_entry *) entry;



  if (ret == (struct coff_debug_merge_hash_entry *) ((void*)0))
    ret = ((struct coff_debug_merge_hash_entry *)
    bfd_hash_allocate (table,
         sizeof (struct coff_debug_merge_hash_entry)));
  if (ret == (struct coff_debug_merge_hash_entry *) ((void*)0))
    return (struct bfd_hash_entry *) ret;


  ret = ((struct coff_debug_merge_hash_entry *)
  bfd_hash_newfunc ((struct bfd_hash_entry *) ret, table, string));
  if (ret != (struct coff_debug_merge_hash_entry *) ((void*)0))
    {

      ret->types = ((void*)0);
    }

  return (struct bfd_hash_entry *) ret;
}
