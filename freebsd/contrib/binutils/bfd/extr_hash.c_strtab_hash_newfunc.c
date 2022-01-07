
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strtab_hash_entry {int * next; scalar_t__ index; } ;
struct bfd_hash_table {int dummy; } ;
struct bfd_hash_entry {int dummy; } ;
typedef scalar_t__ bfd_size_type ;


 struct strtab_hash_entry* bfd_hash_allocate (struct bfd_hash_table*,int) ;
 scalar_t__ bfd_hash_newfunc (struct bfd_hash_entry*,struct bfd_hash_table*,char const*) ;

__attribute__((used)) static struct bfd_hash_entry *
strtab_hash_newfunc (struct bfd_hash_entry *entry,
       struct bfd_hash_table *table,
       const char *string)
{
  struct strtab_hash_entry *ret = (struct strtab_hash_entry *) entry;



  if (ret == ((void*)0))
    ret = bfd_hash_allocate (table, sizeof (* ret));
  if (ret == ((void*)0))
    return ((void*)0);


  ret = (struct strtab_hash_entry *)
  bfd_hash_newfunc ((struct bfd_hash_entry *) ret, table, string);

  if (ret)
    {

      ret->index = (bfd_size_type) -1;
      ret->next = ((void*)0);
    }

  return (struct bfd_hash_entry *) ret;
}
