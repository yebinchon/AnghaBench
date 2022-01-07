
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_hash_entry {int index; scalar_t__ size; int * next; } ;
struct bfd_hash_table {int dummy; } ;
struct bfd_hash_entry {int dummy; } ;


 scalar_t__ bfd_hash_allocate (struct bfd_hash_table*,int) ;
 scalar_t__ bfd_hash_newfunc (struct bfd_hash_entry*,struct bfd_hash_table*,char const*) ;

__attribute__((used)) static struct bfd_hash_entry *
string_hash_newfunc (struct bfd_hash_entry *entry,
       struct bfd_hash_table *table, const char *string)
{
  struct string_hash_entry *ret = (struct string_hash_entry *) entry;



  if (ret == (struct string_hash_entry *) ((void*)0))
    ret = ((struct string_hash_entry *)
    bfd_hash_allocate (table, sizeof (struct string_hash_entry)));
  if (ret == (struct string_hash_entry *) ((void*)0))
    return ((void*)0);


  ret = ((struct string_hash_entry *)
  bfd_hash_newfunc ((struct bfd_hash_entry *) ret, table, string));

  if (ret)
    {

      ret->next = ((void*)0);
      ret->index = -1;
      ret->size = 0;
    }

  return (struct bfd_hash_entry *) ret;
}
