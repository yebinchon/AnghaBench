
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee_name_type_hash_entry {int * types; } ;
struct bfd_hash_table {int dummy; } ;
struct bfd_hash_entry {int dummy; } ;


 scalar_t__ bfd_hash_allocate (struct bfd_hash_table*,int) ;
 scalar_t__ bfd_hash_newfunc (struct bfd_hash_entry*,struct bfd_hash_table*,char const*) ;

__attribute__((used)) static struct bfd_hash_entry *
ieee_name_type_newfunc (struct bfd_hash_entry *entry,
   struct bfd_hash_table *table, const char *string)
{
  struct ieee_name_type_hash_entry *ret =
    (struct ieee_name_type_hash_entry *) entry;



  if (ret == ((void*)0))
    ret = ((struct ieee_name_type_hash_entry *)
    bfd_hash_allocate (table, sizeof *ret));
  if (ret == ((void*)0))
    return ((void*)0);


  ret = ((struct ieee_name_type_hash_entry *)
  bfd_hash_newfunc ((struct bfd_hash_entry *) ret, table, string));
  if (ret)
    {

      ret->types = ((void*)0);
    }

  return (struct bfd_hash_entry *) ret;
}
